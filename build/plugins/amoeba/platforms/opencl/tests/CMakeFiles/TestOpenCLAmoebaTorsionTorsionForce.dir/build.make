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
include plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/compiler_depend.make

# Include the progress variables for this target.
include plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/flags.make

plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o: plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/flags.make
plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o: ../plugins/amoeba/platforms/opencl/tests/TestOpenCLAmoebaTorsionTorsionForce.cpp
plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o: plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/opencl/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o -MF CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o.d -o CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o -c /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/amoeba/platforms/opencl/tests/TestOpenCLAmoebaTorsionTorsionForce.cpp

plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.i"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/opencl/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/amoeba/platforms/opencl/tests/TestOpenCLAmoebaTorsionTorsionForce.cpp > CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.i

plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.s"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/opencl/tests && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/amoeba/platforms/opencl/tests/TestOpenCLAmoebaTorsionTorsionForce.cpp -o CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.s

# Object files for target TestOpenCLAmoebaTorsionTorsionForce
TestOpenCLAmoebaTorsionTorsionForce_OBJECTS = \
"CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o"

# External object files for target TestOpenCLAmoebaTorsionTorsionForce
TestOpenCLAmoebaTorsionTorsionForce_EXTERNAL_OBJECTS =

TestOpenCLAmoebaTorsionTorsionForce: plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/TestOpenCLAmoebaTorsionTorsionForce.cpp.o
TestOpenCLAmoebaTorsionTorsionForce: plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/build.make
TestOpenCLAmoebaTorsionTorsionForce: libOpenMMAmoebaOpenCL.so
TestOpenCLAmoebaTorsionTorsionForce: libOpenMMAmoeba.so
TestOpenCLAmoebaTorsionTorsionForce: libOpenMMOpenCL.so
TestOpenCLAmoebaTorsionTorsionForce: libOpenMM.so.7.7
TestOpenCLAmoebaTorsionTorsionForce: /usr/lib64/libdl.so
TestOpenCLAmoebaTorsionTorsionForce: /usr/lib64/libOpenCL.so
TestOpenCLAmoebaTorsionTorsionForce: plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../TestOpenCLAmoebaTorsionTorsionForce"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/opencl/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/build: TestOpenCLAmoebaTorsionTorsionForce
.PHONY : plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/build

plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/clean:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/opencl/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/cmake_clean.cmake
.PHONY : plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/clean

plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/depend:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/amoeba/platforms/opencl/tests /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/opencl/tests /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/amoeba/platforms/opencl/tests/CMakeFiles/TestOpenCLAmoebaTorsionTorsionForce.dir/depend

