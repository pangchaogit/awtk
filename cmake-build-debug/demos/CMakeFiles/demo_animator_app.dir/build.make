# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /home/pc/software/clion-2018.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/pc/software/clion-2018.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pc/work/awtk/pc_awtk/awtk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug

# Include any dependencies generated for this target.
include demos/CMakeFiles/demo_animator_app.dir/depend.make

# Include the progress variables for this target.
include demos/CMakeFiles/demo_animator_app.dir/progress.make

# Include the compile flags for this target's objects.
include demos/CMakeFiles/demo_animator_app.dir/flags.make

demos/CMakeFiles/demo_animator_app.dir/demo_animator_app.c.o: demos/CMakeFiles/demo_animator_app.dir/flags.make
demos/CMakeFiles/demo_animator_app.dir/demo_animator_app.c.o: ../demos/demo_animator_app.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demos/CMakeFiles/demo_animator_app.dir/demo_animator_app.c.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/demo_animator_app.dir/demo_animator_app.c.o   -c /home/pc/work/awtk/pc_awtk/awtk/demos/demo_animator_app.c

demos/CMakeFiles/demo_animator_app.dir/demo_animator_app.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/demo_animator_app.dir/demo_animator_app.c.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/demos/demo_animator_app.c > CMakeFiles/demo_animator_app.dir/demo_animator_app.c.i

demos/CMakeFiles/demo_animator_app.dir/demo_animator_app.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/demo_animator_app.dir/demo_animator_app.c.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/demos/demo_animator_app.c -o CMakeFiles/demo_animator_app.dir/demo_animator_app.c.s

# Object files for target demo_animator_app
demo_animator_app_OBJECTS = \
"CMakeFiles/demo_animator_app.dir/demo_animator_app.c.o"

# External object files for target demo_animator_app
demo_animator_app_EXTERNAL_OBJECTS =

demos/demo_animator_app: demos/CMakeFiles/demo_animator_app.dir/demo_animator_app.c.o
demos/demo_animator_app: demos/CMakeFiles/demo_animator_app.dir/build.make
demos/demo_animator_app: src/libawtk.a
demos/demo_animator_app: 3rd/SDL/libSDL2.a
demos/demo_animator_app: 3rd/nanovg/libnanovg.a
demos/demo_animator_app: 3rd/glad/libglad.a
demos/demo_animator_app: 3rd/gpinyin/libgpinyin.a
demos/demo_animator_app: 3rd/libunibreak/liblinebreak.a
demos/demo_animator_app: tools/common/libcommon.a
demos/demo_animator_app: tools/font_gen/libfont_gen.a
demos/demo_animator_app: tools/image_gen/libimage_gen.a
demos/demo_animator_app: tools/str_gen/libstr_gen.a
demos/demo_animator_app: tools/theme_gen/libtheme_gen.a
demos/demo_animator_app: demos/libassets.a
demos/demo_animator_app: src/libawtk.a
demos/demo_animator_app: 3rd/SDL/libSDL2.a
demos/demo_animator_app: 3rd/nanovg/libnanovg.a
demos/demo_animator_app: 3rd/glad/libglad.a
demos/demo_animator_app: 3rd/gpinyin/libgpinyin.a
demos/demo_animator_app: 3rd/libunibreak/liblinebreak.a
demos/demo_animator_app: tools/common/libcommon.a
demos/demo_animator_app: tools/font_gen/libfont_gen.a
demos/demo_animator_app: tools/image_gen/libimage_gen.a
demos/demo_animator_app: tools/str_gen/libstr_gen.a
demos/demo_animator_app: tools/theme_gen/libtheme_gen.a
demos/demo_animator_app: demos/libassets.a
demos/demo_animator_app: demos/CMakeFiles/demo_animator_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable demo_animator_app"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/demos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo_animator_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demos/CMakeFiles/demo_animator_app.dir/build: demos/demo_animator_app

.PHONY : demos/CMakeFiles/demo_animator_app.dir/build

demos/CMakeFiles/demo_animator_app.dir/clean:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/demos && $(CMAKE_COMMAND) -P CMakeFiles/demo_animator_app.dir/cmake_clean.cmake
.PHONY : demos/CMakeFiles/demo_animator_app.dir/clean

demos/CMakeFiles/demo_animator_app.dir/depend:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/work/awtk/pc_awtk/awtk /home/pc/work/awtk/pc_awtk/awtk/demos /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/demos /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/demos/CMakeFiles/demo_animator_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demos/CMakeFiles/demo_animator_app.dir/depend

