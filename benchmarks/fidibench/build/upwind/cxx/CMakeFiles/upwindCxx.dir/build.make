# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/tolnaia/COMBS/benchmarks/fidibench

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tolnaia/COMBS/benchmarks/fidibench/build

# Include any dependencies generated for this target.
include upwind/cxx/CMakeFiles/upwindCxx.dir/depend.make

# Include the progress variables for this target.
include upwind/cxx/CMakeFiles/upwindCxx.dir/progress.make

# Include the compile flags for this target's objects.
include upwind/cxx/CMakeFiles/upwindCxx.dir/flags.make

upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o: upwind/cxx/CMakeFiles/upwindCxx.dir/flags.make
upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o: ../upwind/cxx/upwind.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tolnaia/COMBS/benchmarks/fidibench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o"
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/upwind/cxx && /opt/moose/mpich-3.3/gcc-9.2.0/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/upwindCxx.dir/upwind.cxx.o -c /home/tolnaia/COMBS/benchmarks/fidibench/upwind/cxx/upwind.cxx

upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/upwindCxx.dir/upwind.cxx.i"
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/upwind/cxx && /opt/moose/mpich-3.3/gcc-9.2.0/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tolnaia/COMBS/benchmarks/fidibench/upwind/cxx/upwind.cxx > CMakeFiles/upwindCxx.dir/upwind.cxx.i

upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/upwindCxx.dir/upwind.cxx.s"
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/upwind/cxx && /opt/moose/mpich-3.3/gcc-9.2.0/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tolnaia/COMBS/benchmarks/fidibench/upwind/cxx/upwind.cxx -o CMakeFiles/upwindCxx.dir/upwind.cxx.s

upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o.requires:

.PHONY : upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o.requires

upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o.provides: upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o.requires
	$(MAKE) -f upwind/cxx/CMakeFiles/upwindCxx.dir/build.make upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o.provides.build
.PHONY : upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o.provides

upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o.provides.build: upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o


# Object files for target upwindCxx
upwindCxx_OBJECTS = \
"CMakeFiles/upwindCxx.dir/upwind.cxx.o"

# External object files for target upwindCxx
upwindCxx_EXTERNAL_OBJECTS =

upwind/cxx/upwindCxx: upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o
upwind/cxx/upwindCxx: upwind/cxx/CMakeFiles/upwindCxx.dir/build.make
upwind/cxx/upwindCxx: cxx/libfidibench.a
upwind/cxx/upwindCxx: upwind/cxx/CMakeFiles/upwindCxx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tolnaia/COMBS/benchmarks/fidibench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable upwindCxx"
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/upwind/cxx && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/upwindCxx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
upwind/cxx/CMakeFiles/upwindCxx.dir/build: upwind/cxx/upwindCxx

.PHONY : upwind/cxx/CMakeFiles/upwindCxx.dir/build

upwind/cxx/CMakeFiles/upwindCxx.dir/requires: upwind/cxx/CMakeFiles/upwindCxx.dir/upwind.cxx.o.requires

.PHONY : upwind/cxx/CMakeFiles/upwindCxx.dir/requires

upwind/cxx/CMakeFiles/upwindCxx.dir/clean:
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/upwind/cxx && $(CMAKE_COMMAND) -P CMakeFiles/upwindCxx.dir/cmake_clean.cmake
.PHONY : upwind/cxx/CMakeFiles/upwindCxx.dir/clean

upwind/cxx/CMakeFiles/upwindCxx.dir/depend:
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tolnaia/COMBS/benchmarks/fidibench /home/tolnaia/COMBS/benchmarks/fidibench/upwind/cxx /home/tolnaia/COMBS/benchmarks/fidibench/build /home/tolnaia/COMBS/benchmarks/fidibench/build/upwind/cxx /home/tolnaia/COMBS/benchmarks/fidibench/build/upwind/cxx/CMakeFiles/upwindCxx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : upwind/cxx/CMakeFiles/upwindCxx.dir/depend
