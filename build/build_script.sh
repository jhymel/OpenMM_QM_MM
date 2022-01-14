#!/bin/bash

module load anaconda3
module load intel
module load cuda/10.0

source activate OpenMM_QM_MM

make
make install
make PythonInstall


