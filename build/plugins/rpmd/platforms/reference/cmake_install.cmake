# Install script for directory: /storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/plugins/rpmd/platforms/reference

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins/libOpenMMRPMDReference.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins/libOpenMMRPMDReference.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins/libOpenMMRPMDReference.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins/libOpenMMRPMDReference.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins" TYPE SHARED_LIBRARY FILES "/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/libOpenMMRPMDReference.so")
  if(EXISTS "$ENV{DESTDIR}/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins/libOpenMMRPMDReference.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins/libOpenMMRPMDReference.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins/libOpenMMRPMDReference.so"
         OLD_RPATH "/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/openmm/lib/plugins/libOpenMMRPMDReference.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/storage/coda1/p-jmcdaniel43/0/jhymel6/OpenMM_verisons/openmm_7.7.0_qmmm/build/plugins/rpmd/platforms/reference/tests/cmake_install.cmake")
endif()

