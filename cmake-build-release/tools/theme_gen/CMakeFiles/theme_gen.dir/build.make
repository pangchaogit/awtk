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
include tools/theme_gen/CMakeFiles/theme_gen.dir/depend.make

# Include the progress variables for this target.
include tools/theme_gen/CMakeFiles/theme_gen.dir/progress.make

# Include the compile flags for this target's objects.
include tools/theme_gen/CMakeFiles/theme_gen.dir/flags.make

tools/theme_gen/CMakeFiles/theme_gen.dir/theme_gen.cc.o: tools/theme_gen/CMakeFiles/theme_gen.dir/flags.make
tools/theme_gen/CMakeFiles/theme_gen.dir/theme_gen.cc.o: ../tools/theme_gen/theme_gen.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/theme_gen/CMakeFiles/theme_gen.dir/theme_gen.cc.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/theme_gen.dir/theme_gen.cc.o -c /home/pc/work/awtk/pc_awtk/awtk/tools/theme_gen/theme_gen.cc

tools/theme_gen/CMakeFiles/theme_gen.dir/theme_gen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/theme_gen.dir/theme_gen.cc.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/tools/theme_gen/theme_gen.cc > CMakeFiles/theme_gen.dir/theme_gen.cc.i

tools/theme_gen/CMakeFiles/theme_gen.dir/theme_gen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/theme_gen.dir/theme_gen.cc.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/tools/theme_gen/theme_gen.cc -o CMakeFiles/theme_gen.dir/theme_gen.cc.s

tools/theme_gen/CMakeFiles/theme_gen.dir/xml_theme_gen.cc.o: tools/theme_gen/CMakeFiles/theme_gen.dir/flags.make
tools/theme_gen/CMakeFiles/theme_gen.dir/xml_theme_gen.cc.o: ../tools/theme_gen/xml_theme_gen.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/theme_gen/CMakeFiles/theme_gen.dir/xml_theme_gen.cc.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/theme_gen.dir/xml_theme_gen.cc.o -c /home/pc/work/awtk/pc_awtk/awtk/tools/theme_gen/xml_theme_gen.cc

tools/theme_gen/CMakeFiles/theme_gen.dir/xml_theme_gen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/theme_gen.dir/xml_theme_gen.cc.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/tools/theme_gen/xml_theme_gen.cc > CMakeFiles/theme_gen.dir/xml_theme_gen.cc.i

tools/theme_gen/CMakeFiles/theme_gen.dir/xml_theme_gen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/theme_gen.dir/xml_theme_gen.cc.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/tools/theme_gen/xml_theme_gen.cc -o CMakeFiles/theme_gen.dir/xml_theme_gen.cc.s

# Object files for target theme_gen
theme_gen_OBJECTS = \
"CMakeFiles/theme_gen.dir/theme_gen.cc.o" \
"CMakeFiles/theme_gen.dir/xml_theme_gen.cc.o"

# External object files for target theme_gen
theme_gen_EXTERNAL_OBJECTS =

tools/theme_gen/libtheme_gen.a: tools/theme_gen/CMakeFiles/theme_gen.dir/theme_gen.cc.o
tools/theme_gen/libtheme_gen.a: tools/theme_gen/CMakeFiles/theme_gen.dir/xml_theme_gen.cc.o
tools/theme_gen/libtheme_gen.a: tools/theme_gen/CMakeFiles/theme_gen.dir/build.make
tools/theme_gen/libtheme_gen.a: tools/theme_gen/CMakeFiles/theme_gen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libtheme_gen.a"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && $(CMAKE_COMMAND) -P CMakeFiles/theme_gen.dir/cmake_clean_target.cmake
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/theme_gen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/theme_gen/CMakeFiles/theme_gen.dir/build: tools/theme_gen/libtheme_gen.a

.PHONY : tools/theme_gen/CMakeFiles/theme_gen.dir/build

tools/theme_gen/CMakeFiles/theme_gen.dir/clean:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen && $(CMAKE_COMMAND) -P CMakeFiles/theme_gen.dir/cmake_clean.cmake
.PHONY : tools/theme_gen/CMakeFiles/theme_gen.dir/clean

tools/theme_gen/CMakeFiles/theme_gen.dir/depend:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/work/awtk/pc_awtk/awtk /home/pc/work/awtk/pc_awtk/awtk/tools/theme_gen /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen /home/pc/work/awtk/pc_awtk/awtk/cmake-build-release/tools/theme_gen/CMakeFiles/theme_gen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/theme_gen/CMakeFiles/theme_gen.dir/depend

