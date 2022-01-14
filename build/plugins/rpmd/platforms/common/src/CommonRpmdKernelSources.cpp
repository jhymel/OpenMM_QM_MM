/* -------------------------------------------------------------------------- *
 *                                   OpenMM                                   *
 * -------------------------------------------------------------------------- *
 * This is part of the OpenMM molecular simulation toolkit originating from   *
 * Simbios, the NIH National Center for Physics-Based Simulation of           *
 * Biological Structures at Stanford, funded under the NIH Roadmap for        *
 * Medical Research, grant U54 GM072970. See https://simtk.org.               *
 *                                                                            *
 * Portions copyright (c) 2010 Stanford University and the Authors.           *
 * Authors: Peter Eastman                                                     *
 * Contributors:                                                              *
 *                                                                            *
 * This program is free software: you can redistribute it and/or modify       *
 * it under the terms of the GNU Lesser General Public License as published   *
 * by the Free Software Foundation, either version 3 of the License, or       *
 * (at your option) any later version.                                        *
 *                                                                            *
 * This program is distributed in the hope that it will be useful,            *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of             *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              *
 * GNU Lesser General Public License for more details.                        *
 *                                                                            *
 * You should have received a copy of the GNU Lesser General Public License   *
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.      *
 * -------------------------------------------------------------------------- */

#include "CommonRpmdKernelSources.h"

using namespace OpenMM;
using namespace std;

const string CommonRpmdKernelSources::rpmd = "DEVICE mixed3 multiplyComplexRealPart(mixed2 c1, mixed3 c2r, mixed3 c2i) {\n"
"    return c1.x*c2r-c1.y*c2i;\n"
"}\n"
"\n"
"DEVICE mixed3 multiplyComplexImagPart(mixed2 c1, mixed3 c2r, mixed3 c2i) {\n"
"    return c1.x*c2i+c1.y*c2r;\n"
"}\n"
"\n"
"DEVICE mixed3 multiplyComplexRealPartConj(mixed2 c1, mixed3 c2r, mixed3 c2i) {\n"
"    return c1.x*c2r+c1.y*c2i;\n"
"}\n"
"\n"
"DEVICE mixed3 multiplyComplexImagPartConj(mixed2 c1, mixed3 c2r, mixed3 c2i) {\n"
"    return c1.x*c2i-c1.y*c2r;\n"
"}\n"
"\n"
"/**\n"
" * Apply the PILE-L thermostat.\n"
" */\n"
"KERNEL void applyPileThermostat(GLOBAL mixed4* velm, GLOBAL float4* random, unsigned int randomIndex,\n"
"        mixed dt, mixed kT, mixed friction) {\n"
"    const int numBlocks = GLOBAL_SIZE/NUM_COPIES;\n"
"    const int blockStart = NUM_COPIES*(LOCAL_ID/NUM_COPIES);\n"
"    const int indexInBlock = LOCAL_ID-blockStart;\n"
"    const mixed nkT = NUM_COPIES*kT;\n"
"    const mixed twown = 2.0f*nkT/HBAR;\n"
"    const mixed c1_0 = exp(-0.5f*dt*friction);\n"
"    const mixed c2_0 = sqrt(1.0f-c1_0*c1_0);\n"
"    LOCAL mixed3 v[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed3 temp[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed2 w[NUM_COPIES];\n"
"    LOCAL_ARG mixed3* vreal = &v[blockStart];\n"
"    LOCAL_ARG mixed3* vimag = &v[blockStart+LOCAL_SIZE];\n"
"    if (LOCAL_ID < NUM_COPIES)\n"
"        w[indexInBlock] = make_mixed2(cos(-indexInBlock*2*M_PI/NUM_COPIES), sin(-indexInBlock*2*M_PI/NUM_COPIES));\n"
"    SYNC_THREADS;\n"
"    randomIndex += NUM_COPIES*((GLOBAL_ID)/NUM_COPIES);\n"
"    for (int particle = (GLOBAL_ID)/NUM_COPIES; particle < NUM_ATOMS; particle += numBlocks) {\n"
"        mixed4 particleVelm = velm[particle+indexInBlock*PADDED_NUM_ATOMS];\n"
"        mixed invMass = particleVelm.w;\n"
"        mixed c3_0 = c2_0*sqrt(nkT*invMass);\n"
"        \n"
"        // Forward FFT.\n"
"        \n"
"        vreal[indexInBlock] = SCALE*make_mixed3(particleVelm.x, particleVelm.y, particleVelm.z);\n"
"        vimag[indexInBlock] = make_mixed3(0);\n"
"        SYNC_THREADS;\n"
"        FFT_V_FORWARD\n"
"\n"
"        // Apply the thermostat.\n"
"\n"
"        if (indexInBlock == 0) {\n"
"            // Apply a local Langevin thermostat to the centroid mode.\n"
"\n"
"            float4 rand = random[randomIndex];\n"
"            vreal[0] = vreal[0]*c1_0 + c3_0*make_mixed3(rand.x, rand.y, rand.z);\n"
"        }\n"
"        else {\n"
"            // Use critical damping white noise for the remaining modes.\n"
"\n"
"            int k = (indexInBlock <= NUM_COPIES/2 ? indexInBlock : NUM_COPIES-indexInBlock);\n"
"            const bool isCenter = (NUM_COPIES%2 == 0 && k == NUM_COPIES/2);\n"
"            const mixed wk = twown*sin(k*M_PI/NUM_COPIES);\n"
"            const mixed c1 = exp(-wk*dt);\n"
"            const mixed c2 = sqrt((1.0f-c1*c1)/2.0f) * (isCenter ? sqrt(2.0f) : 1.0f);\n"
"            const mixed c3 = c2*sqrt(nkT*invMass);\n"
"            float4 rand1 = random[randomIndex+k];\n"
"            float4 rand2 = (isCenter ? make_float4(0) : random[randomIndex+NUM_COPIES-k]);\n"
"            vreal[indexInBlock] = c1*vreal[indexInBlock] + c3*make_mixed3(rand1.x, rand1.y, rand1.z);\n"
"            vimag[indexInBlock] = c1*vimag[indexInBlock] + c3*(indexInBlock < NUM_COPIES/2 ? make_mixed3(rand2.x, rand2.y, rand2.z) : make_mixed3(-rand2.x, -rand2.y, -rand2.z));\n"
"        }\n"
"        SYNC_THREADS;\n"
"        \n"
"        // Inverse FFT.\n"
"        \n"
"        FFT_V_BACKWARD\n"
"        if (invMass != 0)\n"
"            velm[particle+indexInBlock*PADDED_NUM_ATOMS] = make_mixed4(SCALE*vreal[indexInBlock].x, SCALE*vreal[indexInBlock].y, SCALE*vreal[indexInBlock].z, particleVelm.w);\n"
"        randomIndex += GLOBAL_SIZE;\n"
"    }\n"
"}\n"
"\n"
"/**\n"
" * Advance the positions and velocities.\n"
" */\n"
"KERNEL void integrateStep(GLOBAL mixed4* posq, GLOBAL mixed4* velm, GLOBAL mm_long* force, mixed dt, mixed kT) {\n"
"    const int numBlocks = (GLOBAL_SIZE)/NUM_COPIES;\n"
"    const int blockStart = NUM_COPIES*(LOCAL_ID/NUM_COPIES);\n"
"    const int indexInBlock = LOCAL_ID-blockStart;\n"
"    const mixed nkT = NUM_COPIES*kT;\n"
"    const mixed twown = 2.0f*nkT/HBAR;\n"
"    const mixed forceScale = 1/(mixed) 0x100000000;\n"
"    LOCAL mixed3 q[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed3 v[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed3 temp[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed2 w[NUM_COPIES];\n"
"\n"
"    // Update velocities.\n"
"    \n"
"    for (int particle = (GLOBAL_ID)/NUM_COPIES; particle < NUM_ATOMS; particle += numBlocks) {\n"
"        int index = particle+indexInBlock*PADDED_NUM_ATOMS;\n"
"        int forceIndex = particle+indexInBlock*PADDED_NUM_ATOMS*3;\n"
"        mixed4 particleVelm = velm[index];\n"
"        particleVelm.x += forceScale*force[forceIndex]*(0.5f*dt*particleVelm.w);\n"
"        particleVelm.y += forceScale*force[forceIndex+PADDED_NUM_ATOMS]*(0.5f*dt*particleVelm.w);\n"
"        particleVelm.z += forceScale*force[forceIndex+PADDED_NUM_ATOMS*2]*(0.5f*dt*particleVelm.w);\n"
"        if (particleVelm.w != 0)\n"
"            velm[index] = particleVelm;\n"
"    }\n"
"    \n"
"    // Evolve the free ring polymer by transforming to the frequency domain.\n"
"\n"
"    LOCAL_ARG mixed3* qreal = &q[blockStart];\n"
"    LOCAL_ARG mixed3* qimag = &q[blockStart+LOCAL_SIZE];\n"
"    LOCAL_ARG mixed3* vreal = &v[blockStart];\n"
"    LOCAL_ARG mixed3* vimag = &v[blockStart+LOCAL_SIZE];\n"
"    if (LOCAL_ID < NUM_COPIES)\n"
"        w[indexInBlock] = make_mixed2(cos(-indexInBlock*2*M_PI/NUM_COPIES), sin(-indexInBlock*2*M_PI/NUM_COPIES));\n"
"    SYNC_THREADS;\n"
"    for (int particle = (GLOBAL_ID)/NUM_COPIES; particle < NUM_ATOMS; particle += numBlocks) {\n"
"        mixed4 particlePosq = posq[particle+indexInBlock*PADDED_NUM_ATOMS];\n"
"        mixed4 particleVelm = velm[particle+indexInBlock*PADDED_NUM_ATOMS];\n"
"        \n"
"        // Forward FFT.\n"
"        \n"
"        qreal[indexInBlock] = SCALE*make_mixed3(particlePosq.x, particlePosq.y, particlePosq.z);\n"
"        qimag[indexInBlock] = make_mixed3(0);\n"
"        vreal[indexInBlock] = SCALE*make_mixed3(particleVelm.x, particleVelm.y, particleVelm.z);\n"
"        vimag[indexInBlock] = make_mixed3(0);\n"
"        SYNC_THREADS;\n"
"        FFT_Q_FORWARD\n"
"        FFT_V_FORWARD\n"
"\n"
"        // Apply the thermostat.\n"
"\n"
"        if (indexInBlock == 0) {\n"
"            qreal[0] += vreal[0]*dt;\n"
"            qimag[0] += vimag[0]*dt;\n"
"        }\n"
"        else {\n"
"            const mixed wk = twown*sin(indexInBlock*M_PI/NUM_COPIES);\n"
"            const mixed wt = wk*dt;\n"
"            const mixed coswt = cos(wt);\n"
"            const mixed sinwt = sin(wt);\n"
"            const mixed3 vprimereal = vreal[indexInBlock]*coswt - qreal[indexInBlock]*(wk*sinwt); // Advance velocity from t to t+dt\n"
"            const mixed3 vprimeimag = vimag[indexInBlock]*coswt - qimag[indexInBlock]*(wk*sinwt);\n"
"            qreal[indexInBlock] = vreal[indexInBlock]*(sinwt/wk) + qreal[indexInBlock]*coswt; // Advance position from t to t+dt\n"
"            qimag[indexInBlock] = vimag[indexInBlock]*(sinwt/wk) + qimag[indexInBlock]*coswt;\n"
"            vreal[indexInBlock] = vprimereal;\n"
"            vimag[indexInBlock] = vprimeimag;\n"
"        }\n"
"        SYNC_THREADS;\n"
"        \n"
"        // Inverse FFT.\n"
"        \n"
"        FFT_Q_BACKWARD\n"
"        FFT_V_BACKWARD\n"
"        if (particleVelm.w != 0) {\n"
"            posq[particle+indexInBlock*PADDED_NUM_ATOMS] = make_mixed4(SCALE*qreal[indexInBlock].x, SCALE*qreal[indexInBlock].y, SCALE*qreal[indexInBlock].z, particlePosq.w);\n"
"            velm[particle+indexInBlock*PADDED_NUM_ATOMS] = make_mixed4(SCALE*vreal[indexInBlock].x, SCALE*vreal[indexInBlock].y, SCALE*vreal[indexInBlock].z, particleVelm.w);\n"
"        }\n"
"    }\n"
"}\n"
"\n"
"/**\n"
" * Advance the velocities by a half step.\n"
" */\n"
"KERNEL void advanceVelocities(GLOBAL mixed4* velm, GLOBAL mm_long* force, mixed dt) {\n"
"    const int numBlocks = (GLOBAL_SIZE)/NUM_COPIES;\n"
"    const int blockStart = NUM_COPIES*(LOCAL_ID/NUM_COPIES);\n"
"    const int indexInBlock = LOCAL_ID-blockStart;\n"
"    const mixed forceScale = 1/(mixed) 0x100000000;\n"
"\n"
"    // Update velocities.\n"
"    \n"
"    for (int particle = (GLOBAL_ID)/NUM_COPIES; particle < NUM_ATOMS; particle += numBlocks) {\n"
"        int index = particle+indexInBlock*PADDED_NUM_ATOMS;\n"
"        int forceIndex = particle+indexInBlock*PADDED_NUM_ATOMS*3;\n"
"        mixed4 particleVelm = velm[index];\n"
"        particleVelm.x += forceScale*force[forceIndex]*(0.5f*dt*particleVelm.w);\n"
"        particleVelm.y += forceScale*force[forceIndex+PADDED_NUM_ATOMS]*(0.5f*dt*particleVelm.w);\n"
"        particleVelm.z += forceScale*force[forceIndex+PADDED_NUM_ATOMS*2]*(0.5f*dt*particleVelm.w);\n"
"        if (particleVelm.w != 0)\n"
"            velm[index] = particleVelm;\n"
"    }\n"
"}\n"
"\n"
"/**\n"
" * Copy a set of positions and velocities from the integrator's arrays to the context.\n"
" */\n"
"KERNEL void copyDataToContext(GLOBAL mixed4* srcVel, GLOBAL mixed4* dstVel, GLOBAL mixed4* srcPos, GLOBAL real4* dstPos, GLOBAL int* order, int copy) {\n"
"    const int base = copy*PADDED_NUM_ATOMS;\n"
"    for (int particle = GLOBAL_ID; particle < NUM_ATOMS; particle += GLOBAL_SIZE) {\n"
"        int index = base+order[particle];\n"
"        dstVel[particle] = srcVel[index];\n"
"        mixed4 posq = srcPos[index];\n"
"        dstPos[particle].x = posq.x;\n"
"        dstPos[particle].y = posq.y;\n"
"        dstPos[particle].z = posq.z;\n"
"    }\n"
"}\n"
"\n"
"/**\n"
" * Copy a set of positions, velocities, and forces from the context to the integrator's arrays.\n"
" */\n"
"KERNEL void copyDataFromContext(GLOBAL mm_long* srcForce, GLOBAL mm_long* dstForce, GLOBAL mixed4* srcVel, GLOBAL mixed4* dstVel,\n"
"        GLOBAL real4* srcPos, GLOBAL mixed4* dstPos, GLOBAL int* order, int copy) {\n"
"    const int base = copy*PADDED_NUM_ATOMS;\n"
"    for (int particle = GLOBAL_ID; particle < NUM_ATOMS; particle += GLOBAL_SIZE) {\n"
"        int index = order[particle];\n"
"        dstForce[base*3+index] = srcForce[particle];\n"
"        dstForce[base*3+index+PADDED_NUM_ATOMS] = srcForce[particle+PADDED_NUM_ATOMS];\n"
"        dstForce[base*3+index+PADDED_NUM_ATOMS*2] = srcForce[particle+PADDED_NUM_ATOMS*2];\n"
"        dstVel[base+index] = srcVel[particle];\n"
"        real4 posq = srcPos[particle];\n"
"        dstPos[base+index].x = posq.x;\n"
"        dstPos[base+index].y = posq.y;\n"
"        dstPos[base+index].z = posq.z;\n"
"\n"
"    }\n"
"}\n"
"\n"
"/**\n"
" * Atom positions in one copy have been modified.  Apply the same offsets to all the other copies.\n"
" */\n"
"KERNEL void applyCellTranslations(GLOBAL mixed4* posq, GLOBAL real4* movedPos, GLOBAL int* order, int movedCopy) {\n"
"    for (int particle = GLOBAL_ID; particle < NUM_ATOMS; particle += GLOBAL_SIZE) {\n"
"        int index = order[particle];\n"
"        real4 p = movedPos[particle];\n"
"        mixed4 delta = make_mixed4(p.x, p.y, p.z, p.w)-posq[movedCopy*PADDED_NUM_ATOMS+index];\n"
"        for (int copy = 0; copy < NUM_COPIES; copy++) {\n"
"            posq[copy*PADDED_NUM_ATOMS+index].x += delta.x;\n"
"            posq[copy*PADDED_NUM_ATOMS+index].y += delta.y;\n"
"            posq[copy*PADDED_NUM_ATOMS+index].z += delta.z;\n"
"        }\n"
"    }\n"
"}\n"
"";
const string CommonRpmdKernelSources::rpmdContraction = "DEVICE mixed3 multiplyComplexRealPart(mixed2 c1, mixed3 c2r, mixed3 c2i) {\n"
"    return c1.x*c2r-c1.y*c2i;\n"
"}\n"
"\n"
"DEVICE mixed3 multiplyComplexImagPart(mixed2 c1, mixed3 c2r, mixed3 c2i) {\n"
"    return c1.x*c2i+c1.y*c2r;\n"
"}\n"
"\n"
"DEVICE mixed3 multiplyComplexRealPartConj(mixed2 c1, mixed3 c2r, mixed3 c2i) {\n"
"    return c1.x*c2r+c1.y*c2i;\n"
"}\n"
"\n"
"DEVICE mixed3 multiplyComplexImagPartConj(mixed2 c1, mixed3 c2r, mixed3 c2i) {\n"
"    return c1.x*c2i-c1.y*c2r;\n"
"}\n"
"\n"
"/**\n"
" * Compute the contracted positions\n"
" */\n"
"KERNEL void contractPositions(GLOBAL mixed4* posq, GLOBAL mixed4* contracted) {\n"
"    const int numBlocks = (GLOBAL_SIZE)/NUM_COPIES;\n"
"    const int blockStart = NUM_COPIES*(LOCAL_ID/NUM_COPIES);\n"
"    const int indexInBlock = LOCAL_ID-blockStart;\n"
"    LOCAL mixed3 q[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed3 temp[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed2 w1[NUM_COPIES];\n"
"    LOCAL mixed2 w2[NUM_CONTRACTED_COPIES];\n"
"    LOCAL_ARG mixed3* qreal = &q[blockStart];\n"
"    LOCAL_ARG mixed3* qimag = &q[blockStart+LOCAL_SIZE];\n"
"    LOCAL_ARG mixed3* tempreal = &temp[blockStart];\n"
"    LOCAL_ARG mixed3* tempimag = &temp[blockStart+LOCAL_SIZE];\n"
"    if (LOCAL_ID < NUM_COPIES)\n"
"        w1[indexInBlock] = make_mixed2(cos(-indexInBlock*2*M_PI/NUM_COPIES), sin(-indexInBlock*2*M_PI/NUM_COPIES));\n"
"    if (LOCAL_ID < NUM_CONTRACTED_COPIES)\n"
"        w2[indexInBlock] = make_mixed2(cos(-indexInBlock*2*M_PI/NUM_CONTRACTED_COPIES), sin(-indexInBlock*2*M_PI/NUM_CONTRACTED_COPIES));\n"
"    SYNC_THREADS;\n"
"    for (int particle = (GLOBAL_ID)/NUM_COPIES; particle < NUM_ATOMS; particle += numBlocks) {\n"
"        // Load the particle position.\n"
"        \n"
"        mixed4 particlePosq = posq[particle+indexInBlock*PADDED_NUM_ATOMS];\n"
"        qreal[indexInBlock] = make_mixed3(particlePosq.x, particlePosq.y, particlePosq.z);\n"
"        qimag[indexInBlock] = make_mixed3(0);\n"
"        \n"
"        // Forward FFT.\n"
"        \n"
"        SYNC_THREADS;\n"
"        LOCAL_ARG mixed2* w = w1;\n"
"        FFT_Q_FORWARD\n"
"        if (NUM_CONTRACTED_COPIES > 1) {\n"
"            // Compress the data to remove high frequencies.\n"
"            \n"
"            int start = (NUM_CONTRACTED_COPIES+1)/2;\n"
"            tempreal[indexInBlock] = qreal[indexInBlock];\n"
"            tempimag[indexInBlock] = qimag[indexInBlock];\n"
"            SYNC_THREADS;\n"
"            if (indexInBlock < NUM_CONTRACTED_COPIES) {\n"
"                qreal[indexInBlock] = tempreal[indexInBlock < start ? indexInBlock : indexInBlock+(NUM_COPIES-NUM_CONTRACTED_COPIES)];\n"
"                qimag[indexInBlock] = tempimag[indexInBlock < start ? indexInBlock : indexInBlock+(NUM_COPIES-NUM_CONTRACTED_COPIES)];\n"
"            }\n"
"            SYNC_THREADS;\n"
"            w = w2;\n"
"            FFT_Q_BACKWARD\n"
"        }\n"
"        \n"
"        // Store results.\n"
"        \n"
"        if (indexInBlock < NUM_CONTRACTED_COPIES)\n"
"            contracted[particle+indexInBlock*PADDED_NUM_ATOMS] = make_mixed4(POS_SCALE*qreal[indexInBlock].x, POS_SCALE*qreal[indexInBlock].y, POS_SCALE*qreal[indexInBlock].z, particlePosq.w);\n"
"    }\n"
"}\n"
"\n"
"/**\n"
" * Apply the contracted forces to all copies.\n"
" */\n"
"KERNEL void contractForces(GLOBAL mm_long* force, GLOBAL mm_long* contracted) {\n"
"    const int numBlocks = (GLOBAL_SIZE)/NUM_COPIES;\n"
"    const int blockStart = NUM_COPIES*(LOCAL_ID/NUM_COPIES);\n"
"    const int indexInBlock = LOCAL_ID-blockStart;\n"
"    const mixed forceScale = 1/(mixed) 0x100000000;\n"
"    LOCAL mixed3 f[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed3 temp[2*THREAD_BLOCK_SIZE];\n"
"    LOCAL mixed2 w1[NUM_COPIES];\n"
"    LOCAL mixed2 w2[NUM_CONTRACTED_COPIES];\n"
"    LOCAL_ARG mixed3* freal = &f[blockStart];\n"
"    LOCAL_ARG mixed3* fimag = &f[blockStart+LOCAL_SIZE];\n"
"    LOCAL_ARG mixed3* tempreal = &temp[blockStart];\n"
"    LOCAL_ARG mixed3* tempimag = &temp[blockStart+LOCAL_SIZE];\n"
"    if (LOCAL_ID < NUM_COPIES)\n"
"        w1[indexInBlock] = make_mixed2(cos(-indexInBlock*2*M_PI/NUM_COPIES), sin(-indexInBlock*2*M_PI/NUM_COPIES));\n"
"    if (LOCAL_ID < NUM_CONTRACTED_COPIES)\n"
"        w2[indexInBlock] = make_mixed2(cos(-indexInBlock*2*M_PI/NUM_CONTRACTED_COPIES), sin(-indexInBlock*2*M_PI/NUM_CONTRACTED_COPIES));\n"
"    SYNC_THREADS;\n"
"    for (int particle = (GLOBAL_ID)/NUM_COPIES; particle < NUM_ATOMS; particle += numBlocks) {\n"
"        // Load the force.\n"
"        \n"
"        int forceIndex = particle+indexInBlock*PADDED_NUM_ATOMS*3;\n"
"        if (indexInBlock < NUM_CONTRACTED_COPIES) {\n"
"            freal[indexInBlock] = make_mixed3(contracted[forceIndex]*forceScale, contracted[forceIndex+PADDED_NUM_ATOMS]*forceScale, contracted[forceIndex+PADDED_NUM_ATOMS*2]*forceScale);\n"
"            fimag[indexInBlock] = make_mixed3(0);\n"
"        }\n"
"        SYNC_THREADS;\n"
"\n"
"        // Forward FFT.\n"
"        \n"
"        LOCAL_ARG mixed2* w = w2;\n"
"        if (NUM_CONTRACTED_COPIES > 1) {\n"
"            FFT_F_FORWARD\n"
"        }\n"
"        \n"
"        // Set the high frequency components to 0.\n"
"        \n"
"        int start = (NUM_CONTRACTED_COPIES+1)/2;\n"
"        int end = NUM_COPIES-NUM_CONTRACTED_COPIES+start;\n"
"        tempreal[indexInBlock] = freal[indexInBlock];\n"
"        tempimag[indexInBlock] = fimag[indexInBlock];\n"
"        SYNC_THREADS;\n"
"        if (indexInBlock >= start) {\n"
"            freal[indexInBlock] = (indexInBlock < end ? make_mixed3(0) : tempreal[indexInBlock-(NUM_COPIES-NUM_CONTRACTED_COPIES)]);\n"
"            fimag[indexInBlock] = (indexInBlock < end ? make_mixed3(0) : tempimag[indexInBlock-(NUM_COPIES-NUM_CONTRACTED_COPIES)]);\n"
"        }\n"
"        SYNC_THREADS;\n"
"        w = w1;\n"
"        FFT_F_BACKWARD\n"
"        \n"
"        // Store results.\n"
"        \n"
"        force[forceIndex] += (mm_long) (FORCE_SCALE*freal[indexInBlock].x);\n"
"        force[forceIndex+PADDED_NUM_ATOMS] += (mm_long) (FORCE_SCALE*freal[indexInBlock].y);\n"
"        force[forceIndex+PADDED_NUM_ATOMS*2] += (mm_long) (FORCE_SCALE*freal[indexInBlock].z);\n"
"    }\n"
"}\n"
"";