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
CMAKE_BINARY_DIR = /home/pc/work/awtk/pc_awtk/awtk/build

# Include any dependencies generated for this target.
include tools/image_gen/CMakeFiles/image_gen.dir/depend.make

# Include the progress variables for this target.
include tools/image_gen/CMakeFiles/image_gen.dir/progress.make

# Include the compile flags for this target's objects.
include tools/image_gen/CMakeFiles/image_gen.dir/flags.make

tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o: tools/image_gen/CMakeFiles/image_gen.dir/flags.make
tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o: ../tools/image_gen/image_gen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/build/tools/image_gen && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/image_gen.dir/image_gen.c.o   -c /home/pc/work/awtk/pc_awtk/awtk/tools/image_gen/image_gen.c

tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/image_gen.dir/image_gen.c.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/build/tools/image_gen && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/tools/image_gen/image_gen.c > CMakeFiles/image_gen.dir/image_gen.c.i

tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/image_gen.dir/image_gen.c.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/build/tools/image_gen && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/tools/image_gen/image_gen.c -o CMakeFiles/image_gen.dir/image_gen.c.s

tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o.requires:

.PHONY : tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o.requires

tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o.provides: tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o.requires
	$(MAKE) -f tools/image_gen/CMakeFiles/image_gen.dir/build.make tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o.provides.build
.PHONY : tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o.provides

tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o.provides.build: tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o


# Object files for target image_gen
image_gen_OBJECTS = \
"CMakeFiles/image_gen.dir/image_gen.c.o"

# External object files for target image_gen
image_gen_EXTERNAL_OBJECTS =

tools/image_gen/libimage_gen.a: tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o
tools/image_gen/libimage_gen.a: tools/image_gen/CMakeFiles/image_gen.dir/build.make
tools/image_gen/libimage_gen.a: tools/image_gen/CMakeFiles/image_gen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libimage_gen.a"
	cd /home/pc/work/awtk/pc_awtk/awtk/build/tools/image_gen && $(CMAKE_COMMAND) -P CMakeFiles/image_gen.dir/cmake_clean_target.cmake
	cd /home/pc/work/awtk/pc_awtk/awtk/build/tools/image_gen && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_gen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/image_gen/CMakeFiles/image_gen.dir/build: tools/image_gen/libimage_gen.a

.PHONY : tools/image_gen/CMakeFiles/image_gen.dir/build

tools/image_gen/CMakeFiles/image_gen.dir/requires: tools/image_gen/CMakeFiles/image_gen.dir/image_gen.c.o.requires

.PHONY : tools/image_gen/CMakeFiles/image_gen.dir/requires

tools/image_gen/CMakeFiles/image_gen.dir/clean:
	cd /home/pc/work/awtk/pc_awtk/awtk/build/tools/image_gen && $(CMAKE_COMMAND) -P CMakeFiles/image_gen.dir/cmake_clean.cmake
.PHONY : tools/image_gen/CMakeFiles/image_gen.dir/clean

tools/image_gen/CMakeFiles/image_gen.dir/depend:
	cd /home/pc/work/awtk/pc_awtk/awtk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/work/awtk/pc_awtk/awtk /home/pc/work/awtk/pc_awtk/awtk/tools/image_gen /home/pc/work/awtk/pc_awtk/awtk/build /home/pc/work/awtk/pc_awtk/awtk/build/tools/image_gen /home/pc/work/awtk/pc_awtk/awtk/build/tools/image_gen/CMakeFiles/image_gen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/image_gen/CMakeFiles/image_gen.dir/depend

