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
CMAKE_BINARY_DIR = /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release

# Include any dependencies generated for this target.
include demos/CMakeFiles/frambuffer.dir/depend.make

# Include the progress variables for this target.
include demos/CMakeFiles/frambuffer.dir/progress.make

# Include the compile flags for this target's objects.
include demos/CMakeFiles/frambuffer.dir/flags.make

demos/CMakeFiles/frambuffer.dir/frambuffer.c.o: demos/CMakeFiles/frambuffer.dir/flags.make
demos/CMakeFiles/frambuffer.dir/frambuffer.c.o: ../demos/frambuffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demos/CMakeFiles/frambuffer.dir/frambuffer.c.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/frambuffer.dir/frambuffer.c.o   -c /home/pc/work/awtk/pc_awtk/awtk/demos/frambuffer.c

demos/CMakeFiles/frambuffer.dir/frambuffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/frambuffer.dir/frambuffer.c.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/demos/frambuffer.c > CMakeFiles/frambuffer.dir/frambuffer.c.i

demos/CMakeFiles/frambuffer.dir/frambuffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/frambuffer.dir/frambuffer.c.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/demos/frambuffer.c -o CMakeFiles/frambuffer.dir/frambuffer.c.s

demos/CMakeFiles/frambuffer.dir/video_capture.c.o: demos/CMakeFiles/frambuffer.dir/flags.make
demos/CMakeFiles/frambuffer.dir/video_capture.c.o: ../demos/video_capture.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object demos/CMakeFiles/frambuffer.dir/video_capture.c.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/frambuffer.dir/video_capture.c.o   -c /home/pc/work/awtk/pc_awtk/awtk/demos/video_capture.c

demos/CMakeFiles/frambuffer.dir/video_capture.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/frambuffer.dir/video_capture.c.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/demos/video_capture.c > CMakeFiles/frambuffer.dir/video_capture.c.i

demos/CMakeFiles/frambuffer.dir/video_capture.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/frambuffer.dir/video_capture.c.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/demos/video_capture.c -o CMakeFiles/frambuffer.dir/video_capture.c.s

# Object files for target frambuffer
frambuffer_OBJECTS = \
"CMakeFiles/frambuffer.dir/frambuffer.c.o" \
"CMakeFiles/frambuffer.dir/video_capture.c.o"

# External object files for target frambuffer
frambuffer_EXTERNAL_OBJECTS =

demos/frambuffer: demos/CMakeFiles/frambuffer.dir/frambuffer.c.o
demos/frambuffer: demos/CMakeFiles/frambuffer.dir/video_capture.c.o
demos/frambuffer: demos/CMakeFiles/frambuffer.dir/build.make
demos/frambuffer: src/libawtk.a
demos/frambuffer: 3rd/SDL/libSDL2.a
demos/frambuffer: 3rd/nanovg/libnanovg.a
demos/frambuffer: 3rd/glad/libglad.a
demos/frambuffer: 3rd/gpinyin/libgpinyin.a
demos/frambuffer: 3rd/libunibreak/liblinebreak.a
demos/frambuffer: tools/common/libcommon.a
demos/frambuffer: tools/font_gen/libfont_gen.a
demos/frambuffer: tools/image_gen/libimage_gen.a
demos/frambuffer: tools/str_gen/libstr_gen.a
demos/frambuffer: tools/theme_gen/libtheme_gen.a
demos/frambuffer: demos/libassets.a
demos/frambuffer: src/libawtk.a
demos/frambuffer: 3rd/SDL/libSDL2.a
demos/frambuffer: 3rd/nanovg/libnanovg.a
demos/frambuffer: 3rd/glad/libglad.a
demos/frambuffer: 3rd/gpinyin/libgpinyin.a
demos/frambuffer: 3rd/libunibreak/liblinebreak.a
demos/frambuffer: tools/common/libcommon.a
demos/frambuffer: tools/font_gen/libfont_gen.a
demos/frambuffer: tools/image_gen/libimage_gen.a
demos/frambuffer: tools/str_gen/libstr_gen.a
demos/frambuffer: tools/theme_gen/libtheme_gen.a
demos/frambuffer: demos/libassets.a
demos/frambuffer: demos/CMakeFiles/frambuffer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable frambuffer"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/frambuffer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demos/CMakeFiles/frambuffer.dir/build: demos/frambuffer

.PHONY : demos/CMakeFiles/frambuffer.dir/build

demos/CMakeFiles/frambuffer.dir/clean:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos && $(CMAKE_COMMAND) -P CMakeFiles/frambuffer.dir/cmake_clean.cmake
.PHONY : demos/CMakeFiles/frambuffer.dir/clean

demos/CMakeFiles/frambuffer.dir/depend:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/work/awtk/pc_awtk/awtk /home/pc/work/awtk/pc_awtk/awtk/demos /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/demos/CMakeFiles/frambuffer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demos/CMakeFiles/frambuffer.dir/depend

