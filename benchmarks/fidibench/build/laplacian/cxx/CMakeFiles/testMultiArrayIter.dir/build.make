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
include laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/depend.make

# Include the progress variables for this target.
include laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/progress.make

# Include the compile flags for this target's objects.
include laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/flags.make

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o: laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/flags.make
laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o: ../laplacian/cxx/testMultiArrayIter.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tolnaia/COMBS/benchmarks/fidibench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o"
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/laplacian/cxx && /opt/moose/mpich-3.3/gcc-9.2.0/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o -c /home/tolnaia/COMBS/benchmarks/fidibench/laplacian/cxx/testMultiArrayIter.cxx

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.i"
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/laplacian/cxx && /opt/moose/mpich-3.3/gcc-9.2.0/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tolnaia/COMBS/benchmarks/fidibench/laplacian/cxx/testMultiArrayIter.cxx > CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.i

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.s"
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/laplacian/cxx && /opt/moose/mpich-3.3/gcc-9.2.0/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tolnaia/COMBS/benchmarks/fidibench/laplacian/cxx/testMultiArrayIter.cxx -o CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.s

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o.requires:

.PHONY : laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o.requires

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o.provides: laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o.requires
	$(MAKE) -f laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/build.make laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o.provides.build
.PHONY : laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o.provides

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o.provides.build: laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o


# Object files for target testMultiArrayIter
testMultiArrayIter_OBJECTS = \
"CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o"

# External object files for target testMultiArrayIter
testMultiArrayIter_EXTERNAL_OBJECTS =

laplacian/cxx/testMultiArrayIter: laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o
laplacian/cxx/testMultiArrayIter: laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/build.make
laplacian/cxx/testMultiArrayIter: cxx/libfidibench.a
laplacian/cxx/testMultiArrayIter: laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tolnaia/COMBS/benchmarks/fidibench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testMultiArrayIter"
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/laplacian/cxx && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testMultiArrayIter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/build: laplacian/cxx/testMultiArrayIter

.PHONY : laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/build

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/requires: laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/testMultiArrayIter.cxx.o.requires

.PHONY : laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/requires

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/clean:
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build/laplacian/cxx && $(CMAKE_COMMAND) -P CMakeFiles/testMultiArrayIter.dir/cmake_clean.cmake
.PHONY : laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/clean

laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/depend:
	cd /home/tolnaia/COMBS/benchmarks/fidibench/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tolnaia/COMBS/benchmarks/fidibench /home/tolnaia/COMBS/benchmarks/fidibench/laplacian/cxx /home/tolnaia/COMBS/benchmarks/fidibench/build /home/tolnaia/COMBS/benchmarks/fidibench/build/laplacian/cxx /home/tolnaia/COMBS/benchmarks/fidibench/build/laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : laplacian/cxx/CMakeFiles/testMultiArrayIter.dir/depend
