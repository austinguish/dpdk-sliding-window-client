# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /users/jiangyw/Client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /users/jiangyw/Client/build

# Include any dependencies generated for this target.
include CMakeFiles/lab1_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab1_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab1_client.dir/flags.make

CMakeFiles/lab1_client.dir/lab1-client.c.o: CMakeFiles/lab1_client.dir/flags.make
CMakeFiles/lab1_client.dir/lab1-client.c.o: ../lab1-client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/jiangyw/Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab1_client.dir/lab1-client.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab1_client.dir/lab1-client.c.o   -c /users/jiangyw/Client/lab1-client.c

CMakeFiles/lab1_client.dir/lab1-client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_client.dir/lab1-client.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/jiangyw/Client/lab1-client.c > CMakeFiles/lab1_client.dir/lab1-client.c.i

CMakeFiles/lab1_client.dir/lab1-client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_client.dir/lab1-client.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/jiangyw/Client/lab1-client.c -o CMakeFiles/lab1_client.dir/lab1-client.c.s

# Object files for target lab1_client
lab1_client_OBJECTS = \
"CMakeFiles/lab1_client.dir/lab1-client.c.o"

# External object files for target lab1_client
lab1_client_EXTERNAL_OBJECTS =

lab1_client: CMakeFiles/lab1_client.dir/lab1-client.c.o
lab1_client: CMakeFiles/lab1_client.dir/build.make
lab1_client: CMakeFiles/lab1_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/jiangyw/Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lab1_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab1_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab1_client.dir/build: lab1_client

.PHONY : CMakeFiles/lab1_client.dir/build

CMakeFiles/lab1_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab1_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab1_client.dir/clean

CMakeFiles/lab1_client.dir/depend:
	cd /users/jiangyw/Client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/jiangyw/Client /users/jiangyw/Client /users/jiangyw/Client/build /users/jiangyw/Client/build /users/jiangyw/Client/build/CMakeFiles/lab1_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab1_client.dir/depend

