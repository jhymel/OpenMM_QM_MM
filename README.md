[![Conda](https://img.shields.io/conda/v/conda-forge/openmm.svg)](https://anaconda.org/conda-forge/openmm)

## OpenMM: A High Performance Molecular Dynamics Library

Introduction
------------

Hacked verison of OpenMM designed for running the McDaniel lab's QM/MM/PME code. Identical to Jesse's original [hacked OpenMM code base](https://github.com/jmcdaniel43/openmm) expect updated to the newest verison of OpenMM (7.7.0). This update allows for the use of the OpenMM-Torch plugin, making neural network forcefields usable during QM/MM simulations.

Basic compilation instructions
------------
When compiling on PACE, need to load the following modules:
 - module load intel
 - module load anaconda3
 - module load cuda/10.0

Additionally need the following libraries installed to your conda environment:
 - conda install -c conda-forge cmake make cython swig fftw doxygen numpy pydantic
 - conda install -c psi4 gau2grid pint libgx
 - conda install -c anaconda lxml scipy

Build_script.sh included in ./build which loads required environment/modules and compiles code based on [OpenMM compilation instructions](http://docs.openmm.org/latest/userguide/library/02_compiling.html).
