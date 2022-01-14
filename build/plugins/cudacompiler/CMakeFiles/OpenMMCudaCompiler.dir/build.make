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
include plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/compiler_depend.make

# Include the progress variables for this target.
include plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/flags.make

plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o: plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/flags.make
plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o: ../plugins/cudacompiler/src/CudaCompilerKernelFactory.cpp
plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o: plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o -MF CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o.d -o CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o -c /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/cudacompiler/src/CudaCompilerKernelFactory.cpp

plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.i"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/cudacompiler/src/CudaCompilerKernelFactory.cpp > CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.i

plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.s"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/cudacompiler/src/CudaCompilerKernelFactory.cpp -o CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.s

plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o: plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/flags.make
plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o: ../plugins/cudacompiler/src/CudaCompilerKernels.cpp
plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o: plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o -MF CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o.d -o CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o -c /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/cudacompiler/src/CudaCompilerKernels.cpp

plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.i"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/cudacompiler/src/CudaCompilerKernels.cpp > CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.i

plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.s"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler && /usr/local/pace-apps/spack/packages/0.13/linux-rhel7-cascadelake/intel-19.0.5/mvapich2-2.3.2-hpgbkqoytbjh35qn2t63rdorepxcezek/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/cudacompiler/src/CudaCompilerKernels.cpp -o CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.s

# Object files for target OpenMMCudaCompiler
OpenMMCudaCompiler_OBJECTS = \
"CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o" \
"CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o"

# External object files for target OpenMMCudaCompiler
OpenMMCudaCompiler_EXTERNAL_OBJECTS =

libOpenMMCudaCompiler.so: plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernelFactory.cpp.o
libOpenMMCudaCompiler.so: plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/src/CudaCompilerKernels.cpp.o
libOpenMMCudaCompiler.so: plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/build.make
libOpenMMCudaCompiler.so: /usr/local/pace-apps/manual/packages/cuda/10.0/lib64/libnvrtc.so
libOpenMMCudaCompiler.so: libOpenMMCUDA.so
libOpenMMCudaCompiler.so: libOpenMM.so.7.7
libOpenMMCudaCompiler.so: /usr/lib64/libdl.so
libOpenMMCudaCompiler.so: /usr/local/pace-apps/manual/packages/cuda/10.0/lib64/stubs/libcuda.so
libOpenMMCudaCompiler.so: /usr/local/pace-apps/manual/packages/cuda/10.0/lib64/libcufft.so
libOpenMMCudaCompiler.so: plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../../libOpenMMCudaCompiler.so"
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenMMCudaCompiler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/build: libOpenMMCudaCompiler.so
.PHONY : plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/build

plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/clean:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler && $(CMAKE_COMMAND) -P CMakeFiles/OpenMMCudaCompiler.dir/cmake_clean.cmake
.PHONY : plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/clean

plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/depend:
	cd /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/cudacompiler /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/cudacompiler/CMakeFiles/OpenMMCudaCompiler.dir/depend

