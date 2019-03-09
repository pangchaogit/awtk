# Install script for directory: /home/pc/work/awtk/pc_awtk/awtk/3rd

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pc/work/awtk/pc_awtk/awtk/build/3rd/SDL/cmake_install.cmake")
  include("/home/pc/work/awtk/pc_awtk/awtk/build/3rd/nanovg/cmake_install.cmake")
  include("/home/pc/work/awtk/pc_awtk/awtk/build/3rd/glad/cmake_install.cmake")
  include("/home/pc/work/awtk/pc_awtk/awtk/build/3rd/gpinyin/cmake_install.cmake")
  include("/home/pc/work/awtk/pc_awtk/awtk/build/3rd/libunibreak/cmake_install.cmake")

endif()

