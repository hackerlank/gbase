# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /Users/zhangweiye/Documents/software/cmake-2.8.11.2-Darwin64-universal/cmake.2.8.11.app/Contents/bin/cmake

# The command to remove a file.
RM = /Users/zhangweiye/Documents/software/cmake-2.8.11.2-Darwin64-universal/cmake.2.8.11.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /Users/zhangweiye/Documents/software/cmake-2.8.11.2-Darwin64-universal/cmake.2.8.11.app/Contents/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhangweiye/Documents/data/code/gaccob/gbase

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhangweiye/Documents/data/code/gaccob/gbase/build

# Include any dependencies generated for this target.
include test/tcp_test/CMakeFiles/tcp_client.dir/depend.make

# Include the progress variables for this target.
include test/tcp_test/CMakeFiles/tcp_client.dir/progress.make

# Include the compile flags for this target's objects.
include test/tcp_test/CMakeFiles/tcp_client.dir/flags.make

test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o: test/tcp_test/CMakeFiles/tcp_client.dir/flags.make
test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o: ../test/tcp_test/client.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zhangweiye/Documents/data/code/gaccob/gbase/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o"
	cd /Users/zhangweiye/Documents/data/code/gaccob/gbase/build/test/tcp_test && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/tcp_client.dir/client.c.o   -c /Users/zhangweiye/Documents/data/code/gaccob/gbase/test/tcp_test/client.c

test/tcp_test/CMakeFiles/tcp_client.dir/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tcp_client.dir/client.c.i"
	cd /Users/zhangweiye/Documents/data/code/gaccob/gbase/build/test/tcp_test && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/zhangweiye/Documents/data/code/gaccob/gbase/test/tcp_test/client.c > CMakeFiles/tcp_client.dir/client.c.i

test/tcp_test/CMakeFiles/tcp_client.dir/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tcp_client.dir/client.c.s"
	cd /Users/zhangweiye/Documents/data/code/gaccob/gbase/build/test/tcp_test && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/zhangweiye/Documents/data/code/gaccob/gbase/test/tcp_test/client.c -o CMakeFiles/tcp_client.dir/client.c.s

test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o.requires:
.PHONY : test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o.requires

test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o.provides: test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o.requires
	$(MAKE) -f test/tcp_test/CMakeFiles/tcp_client.dir/build.make test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o.provides.build
.PHONY : test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o.provides

test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o.provides.build: test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o

# Object files for target tcp_client
tcp_client_OBJECTS = \
"CMakeFiles/tcp_client.dir/client.c.o"

# External object files for target tcp_client
tcp_client_EXTERNAL_OBJECTS =

test/tcp_test/tcp_client: test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o
test/tcp_test/tcp_client: test/tcp_test/CMakeFiles/tcp_client.dir/build.make
test/tcp_test/tcp_client: libgbase.a
test/tcp_test/tcp_client: test/tcp_test/CMakeFiles/tcp_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable tcp_client"
	cd /Users/zhangweiye/Documents/data/code/gaccob/gbase/build/test/tcp_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/tcp_test/CMakeFiles/tcp_client.dir/build: test/tcp_test/tcp_client
.PHONY : test/tcp_test/CMakeFiles/tcp_client.dir/build

test/tcp_test/CMakeFiles/tcp_client.dir/requires: test/tcp_test/CMakeFiles/tcp_client.dir/client.c.o.requires
.PHONY : test/tcp_test/CMakeFiles/tcp_client.dir/requires

test/tcp_test/CMakeFiles/tcp_client.dir/clean:
	cd /Users/zhangweiye/Documents/data/code/gaccob/gbase/build/test/tcp_test && $(CMAKE_COMMAND) -P CMakeFiles/tcp_client.dir/cmake_clean.cmake
.PHONY : test/tcp_test/CMakeFiles/tcp_client.dir/clean

test/tcp_test/CMakeFiles/tcp_client.dir/depend:
	cd /Users/zhangweiye/Documents/data/code/gaccob/gbase/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangweiye/Documents/data/code/gaccob/gbase /Users/zhangweiye/Documents/data/code/gaccob/gbase/test/tcp_test /Users/zhangweiye/Documents/data/code/gaccob/gbase/build /Users/zhangweiye/Documents/data/code/gaccob/gbase/build/test/tcp_test /Users/zhangweiye/Documents/data/code/gaccob/gbase/build/test/tcp_test/CMakeFiles/tcp_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/tcp_test/CMakeFiles/tcp_client.dir/depend

