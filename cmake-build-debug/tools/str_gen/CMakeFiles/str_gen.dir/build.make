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
include tools/str_gen/CMakeFiles/str_gen.dir/depend.make

# Include the progress variables for this target.
include tools/str_gen/CMakeFiles/str_gen.dir/progress.make

# Include the compile flags for this target's objects.
include tools/str_gen/CMakeFiles/str_gen.dir/flags.make

tools/str_gen/CMakeFiles/str_gen.dir/xml_str_gen.cc.o: tools/str_gen/CMakeFiles/str_gen.dir/flags.make
tools/str_gen/CMakeFiles/str_gen.dir/xml_str_gen.cc.o: ../tools/str_gen/xml_str_gen.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/str_gen/CMakeFiles/str_gen.dir/xml_str_gen.cc.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/str_gen.dir/xml_str_gen.cc.o -c /home/pc/work/awtk/pc_awtk/awtk/tools/str_gen/xml_str_gen.cc

tools/str_gen/CMakeFiles/str_gen.dir/xml_str_gen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/str_gen.dir/xml_str_gen.cc.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/tools/str_gen/xml_str_gen.cc > CMakeFiles/str_gen.dir/xml_str_gen.cc.i

tools/str_gen/CMakeFiles/str_gen.dir/xml_str_gen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/str_gen.dir/xml_str_gen.cc.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/tools/str_gen/xml_str_gen.cc -o CMakeFiles/str_gen.dir/xml_str_gen.cc.s

tools/str_gen/CMakeFiles/str_gen.dir/str_gen.cc.o: tools/str_gen/CMakeFiles/str_gen.dir/flags.make
tools/str_gen/CMakeFiles/str_gen.dir/str_gen.cc.o: ../tools/str_gen/str_gen.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/str_gen/CMakeFiles/str_gen.dir/str_gen.cc.o"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/str_gen.dir/str_gen.cc.o -c /home/pc/work/awtk/pc_awtk/awtk/tools/str_gen/str_gen.cc

tools/str_gen/CMakeFiles/str_gen.dir/str_gen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/str_gen.dir/str_gen.cc.i"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/work/awtk/pc_awtk/awtk/tools/str_gen/str_gen.cc > CMakeFiles/str_gen.dir/str_gen.cc.i

tools/str_gen/CMakeFiles/str_gen.dir/str_gen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/str_gen.dir/str_gen.cc.s"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/work/awtk/pc_awtk/awtk/tools/str_gen/str_gen.cc -o CMakeFiles/str_gen.dir/str_gen.cc.s

# Object files for target str_gen
str_gen_OBJECTS = \
"CMakeFiles/str_gen.dir/xml_str_gen.cc.o" \
"CMakeFiles/str_gen.dir/str_gen.cc.o"

# External object files for target str_gen
str_gen_EXTERNAL_OBJECTS =

tools/str_gen/libstr_gen.a: tools/str_gen/CMakeFiles/str_gen.dir/xml_str_gen.cc.o
tools/str_gen/libstr_gen.a: tools/str_gen/CMakeFiles/str_gen.dir/str_gen.cc.o
tools/str_gen/libstr_gen.a: tools/str_gen/CMakeFiles/str_gen.dir/build.make
tools/str_gen/libstr_gen.a: tools/str_gen/CMakeFiles/str_gen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libstr_gen.a"
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && $(CMAKE_COMMAND) -P CMakeFiles/str_gen.dir/cmake_clean_target.cmake
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/str_gen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/str_gen/CMakeFiles/str_gen.dir/build: tools/str_gen/libstr_gen.a

.PHONY : tools/str_gen/CMakeFiles/str_gen.dir/build

tools/str_gen/CMakeFiles/str_gen.dir/clean:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen && $(CMAKE_COMMAND) -P CMakeFiles/str_gen.dir/cmake_clean.cmake
.PHONY : tools/str_gen/CMakeFiles/str_gen.dir/clean

tools/str_gen/CMakeFiles/str_gen.dir/depend:
	cd /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/work/awtk/pc_awtk/awtk /home/pc/work/awtk/pc_awtk/awtk/tools/str_gen /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen /home/pc/work/awtk/pc_awtk/awtk/cmake-build-debug/tools/str_gen/CMakeFiles/str_gen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/str_gen/CMakeFiles/str_gen.dir/depend

