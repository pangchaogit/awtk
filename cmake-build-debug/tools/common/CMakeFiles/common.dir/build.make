# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pc/work/awtk/pc_awtk/awtk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug

# Include any dependencies generated for this target.
include tools/common/CMakeFiles/common.dir/depend.make

# Include the progress variables for this target.
include tools/common/CMakeFiles/common.dir/progress.make

# Include the compile flags for this target's objects.
include tools/common/CMakeFiles/common.dir/flags.make

tools/common/CMakeFiles/common.dir/utils.c.o: tools/common/CMakeFiles/common.dir/flags.make
tools/common/CMakeFiles/common.dir/utils.c.o: ../tools/common/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tools/common/CMakeFiles/common.dir/utils.c.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/common && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/common.dir/utils.c.o   -c /home/pc/work/awtk/pc_awtk/awtk/tools/common/utils.c

tools/common/CMakeFiles/common.dir/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/common.dir/utils.c.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/common && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/tools/common/utils.c > CMakeFiles/common.dir/utils.c.i

tools/common/CMakeFiles/common.dir/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/common.dir/utils.c.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/common && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/tools/common/utils.c -o CMakeFiles/common.dir/utils.c.s

tools/common/CMakeFiles/common.dir/utils.c.o.requires:

.PHONY : tools/common/CMakeFiles/common.dir/utils.c.o.requires

tools/common/CMakeFiles/common.dir/utils.c.o.provides: tools/common/CMakeFiles/common.dir/utils.c.o.requires
	$(MAKE) -f tools/common/CMakeFiles/common.dir/build.make tools/common/CMakeFiles/common.dir/utils.c.o.provides.build
.PHONY : tools/common/CMakeFiles/common.dir/utils.c.o.provides

tools/common/CMakeFiles/common.dir/utils.c.o.provides.build: tools/common/CMakeFiles/common.dir/utils.c.o


# Object files for target common
common_OBJECTS = \
"CMakeFiles/common.dir/utils.c.o"

# External object files for target common
common_EXTERNAL_OBJECTS =

tools/common/libcommon.a: tools/common/CMakeFiles/common.dir/utils.c.o
tools/common/libcommon.a: tools/common/CMakeFiles/common.dir/build.make
tools/common/libcommon.a: tools/common/CMakeFiles/common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libcommon.a"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/common && $(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean_target.cmake
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/common/CMakeFiles/common.dir/build: tools/common/libcommon.a

.PHONY : tools/common/CMakeFiles/common.dir/build

tools/common/CMakeFiles/common.dir/requires: tools/common/CMakeFiles/common.dir/utils.c.o.requires

.PHONY : tools/common/CMakeFiles/common.dir/requires

tools/common/CMakeFiles/common.dir/clean:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/common && $(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean.cmake
.PHONY : tools/common/CMakeFiles/common.dir/clean

tools/common/CMakeFiles/common.dir/depend:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/work/awtk/pc_awtk/awtk /home/pc/work/awtk/pc_awtk/awtk/tools/common /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/common /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/common/CMakeFiles/common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/common/CMakeFiles/common.dir/depend

