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
include platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/compiler_depend.make

# Include the progress variables for this target.
include platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/progress.make

# Include the compile flags for this target's objects.
include platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/flags.make

platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o: platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/flags.make
platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o: ../platforms/opencl/tests/TestOpenCLCustomAngleForce.cpp
platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o: platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/opencl/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o -MF CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o.d -o CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o -c /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/platforms/opencl/tests/TestOpenCLCustomAngleForce.cpp

platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.i"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/opencl/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/platforms/opencl/tests/TestOpenCLCustomAngleForce.cpp > CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.i

platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.s"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/opencl/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/platforms/opencl/tests/TestOpenCLCustomAngleForce.cpp -o CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.s

# Object files for target TestOpenCLCustomAngleForce
TestOpenCLCustomAngleForce_OBJECTS = \
"CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o"

# External object files for target TestOpenCLCustomAngleForce
TestOpenCLCustomAngleForce_EXTERNAL_OBJECTS =

TestOpenCLCustomAngleForce: platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/TestOpenCLCustomAngleForce.cpp.o
TestOpenCLCustomAngleForce: platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/build.make
TestOpenCLCustomAngleForce: libOpenMMOpenCL.so
TestOpenCLCustomAngleForce: libOpenMM.so.7.7
TestOpenCLCustomAngleForce: /usr/lib64/libdl.so
TestOpenCLCustomAngleForce: /usr/lib64/libOpenCL.so
TestOpenCLCustomAngleForce: platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../TestOpenCLCustomAngleForce"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/opencl/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestOpenCLCustomAngleForce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/build: TestOpenCLCustomAngleForce
.PHONY : platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/build

platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/clean:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/opencl/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestOpenCLCustomAngleForce.dir/cmake_clean.cmake
.PHONY : platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/clean

platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/depend:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/platforms/opencl/tests /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/opencl/tests /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/opencl/tests/CMakeFiles/TestOpenCLCustomAngleForce.dir/depend

