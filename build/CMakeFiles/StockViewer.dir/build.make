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
CMAKE_SOURCE_DIR = /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/build

# Include any dependencies generated for this target.
include CMakeFiles/StockViewer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/StockViewer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/StockViewer.dir/flags.make

CMakeFiles/StockViewer.dir/main.cpp.o: CMakeFiles/StockViewer.dir/flags.make
CMakeFiles/StockViewer.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/StockViewer.dir/main.cpp.o"
	/bin/x86_64-linux-gnu-g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/StockViewer.dir/main.cpp.o -c /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/main.cpp

CMakeFiles/StockViewer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StockViewer.dir/main.cpp.i"
	/bin/x86_64-linux-gnu-g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/main.cpp > CMakeFiles/StockViewer.dir/main.cpp.i

CMakeFiles/StockViewer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StockViewer.dir/main.cpp.s"
	/bin/x86_64-linux-gnu-g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/main.cpp -o CMakeFiles/StockViewer.dir/main.cpp.s

# Object files for target StockViewer
StockViewer_OBJECTS = \
"CMakeFiles/StockViewer.dir/main.cpp.o"

# External object files for target StockViewer
StockViewer_EXTERNAL_OBJECTS =

StockViewer: CMakeFiles/StockViewer.dir/main.cpp.o
StockViewer: CMakeFiles/StockViewer.dir/build.make
StockViewer: libstock.a
StockViewer: CMakeFiles/StockViewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable StockViewer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/StockViewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/StockViewer.dir/build: StockViewer

.PHONY : CMakeFiles/StockViewer.dir/build

CMakeFiles/StockViewer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/StockViewer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/StockViewer.dir/clean

CMakeFiles/StockViewer.dir/depend:
	cd /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/build /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/build /home/parallels/Desktop/dev/CppND-Capstone-TimeSeries/build/CMakeFiles/StockViewer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/StockViewer.dir/depend

