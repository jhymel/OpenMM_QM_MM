__device__ KEY_TYPE getValue(DATA_TYPE value) {
    return SORT_KEY;
}

extern "C" {

/**
 * Sort a list that is short enough to entirely fit in local memory.  This is executed as
 * a single thread block.
 */
__global__ void sortShortList(DATA_TYPE* __restrict__ data, unsigned int length) {
    // Load the data into local memory.
    
    extern __shared__ DATA_TYPE dataBuffer[];
    for (int index = threadIdx.x; index < length; index += blockDim.x)
        dataBuffer[index] = data[index];
    __syncthreads();

    // Perform a bitonic sort in local memory.

    for (unsigned int k = 2; k < 2*length; k *= 2) {
        for (unsigned int j = k/2; j > 0; j /= 2) {
            for (unsigned int i = threadIdx.x; i < length; i += blockDim.x) {
                int ixj = i^j;
                if (ixj > i && ixj < length) {
                    DATA_TYPE value1 = dataBuffer[i];
                    DATA_TYPE value2 = dataBuffer[ixj];
                    bool ascending = ((i&k) == 0);
                    for (unsigned int mask = k*2; mask < 2*length; mask *= 2)
                        ascending = ((i&mask) == 0 ? !ascending : ascending);
                    KEY_TYPE lowKey  = (ascending ? getValue(value1) : getValue(value2));
                    KEY_TYPE highKey = (ascending ? getValue(value2) : getValue(value1));
                    if (lowKey > highKey) {
                        dataBuffer[i] = value2;
                        dataBuffer[ixj] = value1;
                    }
                }
            }
            __syncthreads();
        }
    }

    // Write the data back to global memory.

    for (int index = threadIdx.x; index < length; index += blockDim.x)
        data[index] = dataBuffer[index];
}

/**
 * An alternate kernel for sorting short lists.  In this version every thread does a full
 * scan through the data to select the destination for one element.  This involves more
 * work, but also parallelizes much better.
 */
__global__ void sortShortList2(const DATA_TYPE* __restrict__ dataIn, DATA_TYPE* __restrict__ dataOut, unsigned int length) {
    __shared__ DATA_TYPE dataBuffer[64];
    int globalId = blockDim.x*blockIdx.x+threadIdx.x;
    DATA_TYPE value = dataIn[globalId < length ? globalId : 0];
    KEY_TYPE key = getValue(value);
    int count = 0;
    for (int blockStart = 0; blockStart < length; blockStart += blockDim.x) {
        int numInBlock = min(blockDim.x, length-blockStart);
        __syncthreads();
        if (threadIdx.x < numInBlock)
            dataBuffer[threadIdx.x] = dataIn[blockStart+threadIdx.x];
        __syncthreads();
        for (int i = 0; i < numInBlock; i++) {
            KEY_TYPE otherKey = getValue(dataBuffer[i]);
            if (otherKey < key || (otherKey == key && blockStart+i < globalId))
                count++;
        }
    }
    if (globalId < length)
        dataOut[count] = value;
}

/**
 * Calculate the minimum and maximum value in the array to be sorted.  This kernel
 * is executed as a single work group.
 */
__global__ void computeRange(const DATA_TYPE* __restrict__ data, unsigned int length, KEY_TYPE* __restrict__ range,
        unsigned int numBuckets, unsigned int* __restrict__ bucketOffset) {
#if UNIFORM
    extern __shared__ KEY_TYPE minBuffer[];
    KEY_TYPE* maxBuffer = minBuffer+blockDim.x;
    KEY_TYPE minimum = MAX_KEY;
    KEY_TYPE maximum = MIN_KEY;

    // Each thread calculates the range of a subset of values.

    for (unsigned int index = threadIdx.x; index < length; index += blockDim.x) {
        KEY_TYPE value = getValue(data[index]);
        minimum = min(minimum, value);
        maximum = max(maximum, value);
    }

    // Now reduce them.

    minBuffer[threadIdx.x] = minimum;
    maxBuffer[threadIdx.x] = maximum;
    __syncthreads();
    for (unsigned int step = 1; step < blockDim.x; step *= 2) {
        if (threadIdx.x+step < blockDim.x && threadIdx.x%(2*step) == 0) {
            minBuffer[threadIdx.x] = min(minBuffer[threadIdx.x], minBuffer[threadIdx.x+step]);
            maxBuffer[threadIdx.x] = max(maxBuffer[threadIdx.x], maxBuffer[threadIdx.x+step]);
        }
        __syncthreads();
    }
    minimum = minBuffer[0];
    maximum = maxBuffer[0];
    if (threadIdx.x == 0) {
        range[0] = minimum;
        range[1] = maximum;
    }
#endif

    // Clear the bucket counters in preparation for the next kernel.

    for (unsigned int index = threadIdx.x; index < numBuckets; index += blockDim.x)
        bucketOffset[index] = 0;
}

/**
 * Assign elements to buckets.  This version is optimized for uniformly distributed data.
 */
__global__ void assignElementsToBuckets(const DATA_TYPE* __restrict__ data, unsigned int length, unsigned int numBuckets, const KEY_TYPE* __restrict__ range,
        unsigned int* __restrict__ bucketOffset, unsigned int* __restrict__ bucketOfElement, unsigned int* __restrict__ offsetInBucket) {
    float minValue = (float) (range[0]);
    float maxValue = (float) (range[1]);
    float bucketWidth = (maxValue-minValue)/numBuckets;
    for (unsigned int index = blockDim.x*blockIdx.x+threadIdx.x; index < length; index += blockDim.x*gridDim.x) {
        float key = (float) getValue(data[index]);
        unsigned int bucketIndex = min((unsigned int) ((key-minValue)/bucketWidth), numBuckets-1);
        offsetInBucket[index] = atomicAdd(&bucketOffset[bucketIndex], 1);
        bucketOfElement[index] = bucketIndex;
    }
}

/**
 * Assign elements to buckets.  This version is optimized for non-uniformly distributed data.
 */
__global__ void assignElementsToBuckets2(const DATA_TYPE* __restrict__ data, unsigned int length, unsigned int numBuckets, const KEY_TYPE* __restrict__ range,
        unsigned int* __restrict__ bucketOffset, unsigned int* __restrict__ bucketOfElement, unsigned int* __restrict__ offsetInBucket) {
    // Load 64 datapoints and sort them to get an estimate of the data distribution.

    __shared__ KEY_TYPE elements[64];
    if (threadIdx.x < 64) {
        int index = (int) (threadIdx.x*length/64.0);
        elements[threadIdx.x] = getValue(data[index]);
    }
    __syncthreads();
    for (unsigned int k = 2; k <= 64; k *= 2) {
        for (unsigned int j = k/2; j > 0; j /= 2) {
            if (threadIdx.x < 64) {
                int ixj = threadIdx.x^j;
                if (ixj > threadIdx.x) {
                    KEY_TYPE value1 = elements[threadIdx.x];
                    KEY_TYPE value2 = elements[ixj];
                    bool ascending = (threadIdx.x&k) == 0;
                    KEY_TYPE lowKey = (ascending ? value1 : value2);
                    KEY_TYPE highKey = (ascending ? value2 : value1);
                    if (lowKey > highKey) {
                        elements[threadIdx.x] = value2;
                        elements[ixj] = value1;
                    }
                }
            }
            __syncthreads();
        }
    }

    // Create a function composed of linear segments mapping data values to bucket indices.

    __shared__ float segmentLowerBound[9];
    __shared__ float segmentBaseIndex[9];
    __shared__ float segmentIndexScale[9];
    if (threadIdx.x == 0) {
        segmentLowerBound[0] = elements[0]-0.2f*(elements[5]-elements[0]);
        segmentLowerBound[1] = elements[5];
        segmentLowerBound[2] = elements[10];
        segmentLowerBound[3] = elements[20];
        segmentLowerBound[4] = elements[30];
        segmentLowerBound[5] = elements[40];
        segmentLowerBound[6] = elements[50];
        segmentLowerBound[7] = elements[60];
        segmentLowerBound[8] = elements[63]+0.2f*(elements[63]-elements[58]);
        segmentBaseIndex[0] = numBuckets/16;
        segmentBaseIndex[1] = 3*numBuckets/16;
        segmentBaseIndex[2] = 5*numBuckets/16;
        segmentBaseIndex[3] = 7*numBuckets/16;
        segmentBaseIndex[4] = 9*numBuckets/16;
        segmentBaseIndex[5] = 11*numBuckets/16;
        segmentBaseIndex[6] = 13*numBuckets/16;
        segmentBaseIndex[7] = 15*numBuckets/16;
        segmentBaseIndex[8] = numBuckets;
        for (int i = 0; i < 8; i++)
            if (segmentLowerBound[i+1] == segmentLowerBound[i])
                segmentIndexScale[i] = 0;
            else
                segmentIndexScale[i] = (segmentBaseIndex[i+1]-segmentBaseIndex[i])/(segmentLowerBound[i+1]-segmentLowerBound[i]);
    }
    __syncthreads();

    // Assign elements to buckets.

    for (unsigned int index = blockDim.x*blockIdx.x+threadIdx.x; index < length; index += blockDim.x*gridDim.x) {
        float key = (float) getValue(data[index]);
        int segment;
        for (segment = 0; segment < 7 && key > segmentLowerBound[segment+1]; segment++)
            ;
        unsigned int bucketIndex = segmentBaseIndex[segment]+(key-segmentLowerBound[segment])*segmentIndexScale[segment];
        bucketIndex = min(max(0, bucketIndex), numBuckets-1);
        offsetInBucket[index] = atomicAdd(&bucketOffset[bucketIndex], 1);
        bucketOfElement[index] = bucketIndex;
    }
}

/**
 * Sum the bucket sizes to compute the start position of each bucket.  This kernel
 * is executed as a single work group.
 */
__global__ void computeBucketPositions(unsigned int numBuckets, unsigned int* __restrict__ bucketOffset) {
    extern __shared__ unsigned int posBuffer[];
    unsigned int globalOffset = 0;
    for (unsigned int startBucket = 0; startBucket < numBuckets; startBucket += blockDim.x) {
        // Load the bucket sizes into local memory.

        unsigned int globalIndex = startBucket+threadIdx.x;
        __syncthreads();
        posBuffer[threadIdx.x] = (globalIndex < numBuckets ? bucketOffset[globalIndex] : 0);
        __syncthreads();

        // Perform a parallel prefix sum.

        for (unsigned int step = 1; step < blockDim.x; step *= 2) {
            unsigned int add = (threadIdx.x >= step ? posBuffer[threadIdx.x-step] : 0);
            __syncthreads();
            posBuffer[threadIdx.x] += add;
            __syncthreads();
        }

        // Write the results back to global memory.

        if (globalIndex < numBuckets)
            bucketOffset[globalIndex] = posBuffer[threadIdx.x]+globalOffset;
        globalOffset += posBuffer[blockDim.x-1];
    }
}

/**
 * Copy the input data into the buckets for sorting.
 */
__global__ void copyDataToBuckets(const DATA_TYPE* __restrict__ data, DATA_TYPE* __restrict__ buckets, unsigned int length, const unsigned int* __restrict__ bucketOffset, const unsigned int* __restrict__ bucketOfElement, const unsigned int* __restrict__ offsetInBucket) {
    for (unsigned int index = blockDim.x*blockIdx.x+threadIdx.x; index < length; index += blockDim.x*gridDim.x) {
        DATA_TYPE element = data[index];
        unsigned int bucketIndex = bucketOfElement[index];
        unsigned int offset = (bucketIndex == 0 ? 0 : bucketOffset[bucketIndex-1]);
        buckets[offset+offsetInBucket[index]] = element;
    }
}

/**
 * Sort the data in each bucket.
 */
__global__ void sortBuckets(DATA_TYPE* __restrict__ data, const DATA_TYPE* __restrict__ buckets, unsigned int numBuckets, const unsigned int* __restrict__ bucketOffset) {
    extern __shared__ DATA_TYPE dataBuffer[];
    for (unsigned int index = blockIdx.x; index < numBuckets; index += gridDim.x) {
        unsigned int startIndex = (index == 0 ? 0 : bucketOffset[index-1]);
        unsigned int endIndex = bucketOffset[index];
        unsigned int length = endIndex-startIndex;
        if (length <= blockDim.x) {
            // Load the data into local memory.

            if (threadIdx.x < length)
                dataBuffer[threadIdx.x] = buckets[startIndex+threadIdx.x];
            else
                dataBuffer[threadIdx.x] = MAX_VALUE;
            __syncthreads();

            // Perform a bitonic sort in local memory.

            for (unsigned int k = 2; k <= blockDim.x; k *= 2) {
                for (unsigned int j = k/2; j > 0; j /= 2) {
                    int ixj = threadIdx.x^j;
                    if (ixj > threadIdx.x) {
                        DATA_TYPE value1 = dataBuffer[threadIdx.x];
                        DATA_TYPE value2 = dataBuffer[ixj];
                        bool ascending = (threadIdx.x&k) == 0;
                        KEY_TYPE lowKey = (ascending ? getValue(value1) : getValue(value2));
                        KEY_TYPE highKey = (ascending ? getValue(value2) : getValue(value1));
                        if (lowKey > highKey) {
                            dataBuffer[threadIdx.x] = value2;
                            dataBuffer[ixj] = value1;
                        }
                    }
                    __syncthreads();
                }
            }

            // Write the data to the sorted array.

            if (threadIdx.x < length)
                data[startIndex+threadIdx.x] = dataBuffer[threadIdx.x];
        }
        else {
            // Copy the bucket data over to the output array.

            for (unsigned int i = threadIdx.x; i < length; i += blockDim.x)
                data[startIndex+i] = buckets[startIndex+i];
            __threadfence_block();
            __syncthreads();

            // Perform a bitonic sort in global memory.

            for (unsigned int k = 2; k < 2*length; k *= 2) {
                for (unsigned int j = k/2; j > 0; j /= 2) {
                    for (unsigned int i = threadIdx.x; i < length; i += blockDim.x) {
                        int ixj = i^j;
                        if (ixj > i && ixj < length) {
                            DATA_TYPE value1 = data[startIndex+i];
                            DATA_TYPE value2 = data[startIndex+ixj];
                            bool ascending = ((i&k) == 0);
                            for (unsigned int mask = k*2; mask < 2*length; mask *= 2)
                                ascending = ((i&mask) == 0 ? !ascending : ascending);
                            KEY_TYPE lowKey  = (ascending ? getValue(value1) : getValue(value2));
                            KEY_TYPE highKey = (ascending ? getValue(value2) : getValue(value1));
                            if (lowKey > highKey) {
                                data[startIndex+i] = value2;
                                data[startIndex+ixj] = value1;
                            }
                        }
                    }
                    __threadfence_block();
                    __syncthreads();
                }
            }
        }
    }
}

}