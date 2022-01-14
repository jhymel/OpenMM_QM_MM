# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /storage/coda1/p-jmcdaniel43/0/jhymel6/.conda/envs/OpenMM_QM_MM/bin/cmake

# The command to remove a file.
RM = /storage/coda1/p-jmcdaniel43/0/jhymel6/.conda/envs/OpenMM_QM_MM/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build

# Utility rule file for AmoebaCommonKernels.

# Include any custom commands dependencies for this target.
include plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/compiler_depend.make

# Include the progress variables for this target.
include plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/progress.make

plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels: plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp
plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels: plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.h

plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/amoebaGk.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/amoebaTorsionTorsionForce.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/amoebaVdwForce1.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/amoebaVdwForce2.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/amoebaWcaForce.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/bicubic.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/gkEDiffPairForce.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/gkPairForce1.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/gkPairForce2.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/hippoComputeField.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/hippoFixedField.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/hippoInteraction.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/hippoInteractionHeader.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/hippoMultipoles.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/hippoMutualField.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/hippoNonbonded.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/hippoNonbondedExceptions.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/multipoleElectrostatics.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/multipoleFixedField.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/multipoleInducedField.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/multipolePme.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/multipoles.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/pmeMultipoleElectrostatics.cc
plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp: ../plugins/amoeba/platforms/common/src/kernels/sphericalMultipoles.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating src/CommonAmoebaKernelSources.cpp, src/CommonAmoebaKernelSources.h"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/common && /storage/coda1/p-jmcdaniel43/0/jhymel6/.conda/envs/OpenMM_QM_MM/bin/cmake -D KERNEL_SOURCE_DIR=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/amoeba/platforms/common/src -D KERNELS_CPP=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp -D KERNELS_H=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.h -D KERNEL_SOURCE_CLASS=CommonAmoebaKernelSources -D KERNEL_FILE_EXTENSION=cc -P /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/cmake_modules/EncodeKernelFiles.cmake

plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.h: plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.h

AmoebaCommonKernels: plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels
AmoebaCommonKernels: plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.cpp
AmoebaCommonKernels: plugins/amoeba/platforms/common/src/CommonAmoebaKernelSources.h
AmoebaCommonKernels: plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/build.make
.PHONY : AmoebaCommonKernels

# Rule to build all files generated by this target.
plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/build: AmoebaCommonKernels
.PHONY : plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/build

plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/clean:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/common && $(CMAKE_COMMAND) -P CMakeFiles/AmoebaCommonKernels.dir/cmake_clean.cmake
.PHONY : plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/clean

plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/depend:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/amoeba/platforms/common /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/common /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/amoeba/platforms/common/CMakeFiles/AmoebaCommonKernels.dir/depend

