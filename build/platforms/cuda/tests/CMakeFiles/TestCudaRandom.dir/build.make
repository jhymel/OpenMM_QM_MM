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

# Include any dependencies generated for this target.
include platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/compiler_depend.make

# Include the progress variables for this target.
include platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/progress.make

# Include the compile flags for this target's objects.
include platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/flags.make

platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o: platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/flags.make
platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o: ../platforms/cuda/tests/TestCudaRandom.cpp
platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o: platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/cuda/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o -MF CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o.d -o CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o -c /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/platforms/cuda/tests/TestCudaRandom.cpp

platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.i"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/cuda/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/platforms/cuda/tests/TestCudaRandom.cpp > CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.i

platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.s"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/cuda/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/platforms/cuda/tests/TestCudaRandom.cpp -o CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.s

# Object files for target TestCudaRandom
TestCudaRandom_OBJECTS = \
"CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o"

# External object files for target TestCudaRandom
TestCudaRandom_EXTERNAL_OBJECTS =

TestCudaRandom: platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/TestCudaRandom.cpp.o
TestCudaRandom: platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/build.make
TestCudaRandom: libOpenMMCUDA.so
TestCudaRandom: libOpenMM.so.7.7
TestCudaRandom: /usr/lib64/libdl.so
TestCudaRandom: /usr/local/pace-apps/manual/packages/cuda/10.0/lib64/stubs/libcuda.so
TestCudaRandom: /usr/local/pace-apps/manual/packages/cuda/10.0/lib64/libcufft.so
TestCudaRandom: platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../TestCudaRandom"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/cuda/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestCudaRandom.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/build: TestCudaRandom
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/build

platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/clean:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/cuda/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestCudaRandom.dir/cmake_clean.cmake
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/clean

platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/depend:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/platforms/cuda/tests /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/cuda/tests /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaRandom.dir/depend

