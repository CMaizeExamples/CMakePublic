# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ally/CMaizeExamples/CMakePublic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ally/CMaizeExamples/CMakePublic/_builds

# Include any dependencies generated for this target.
include CMakeFiles/CMakePublic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CMakePublic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CMakePublic.dir/flags.make

CMakeFiles/CMakePublic.dir/cmake_public.cpp.o: CMakeFiles/CMakePublic.dir/flags.make
CMakeFiles/CMakePublic.dir/cmake_public.cpp.o: ../cmake_public.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ally/CMaizeExamples/CMakePublic/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CMakePublic.dir/cmake_public.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CMakePublic.dir/cmake_public.cpp.o -c /Users/ally/CMaizeExamples/CMakePublic/cmake_public.cpp

CMakeFiles/CMakePublic.dir/cmake_public.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CMakePublic.dir/cmake_public.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ally/CMaizeExamples/CMakePublic/cmake_public.cpp > CMakeFiles/CMakePublic.dir/cmake_public.cpp.i

CMakeFiles/CMakePublic.dir/cmake_public.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CMakePublic.dir/cmake_public.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ally/CMaizeExamples/CMakePublic/cmake_public.cpp -o CMakeFiles/CMakePublic.dir/cmake_public.cpp.s

# Object files for target CMakePublic
CMakePublic_OBJECTS = \
"CMakeFiles/CMakePublic.dir/cmake_public.cpp.o"

# External object files for target CMakePublic
CMakePublic_EXTERNAL_OBJECTS =

libCMakePublic.a: CMakeFiles/CMakePublic.dir/cmake_public.cpp.o
libCMakePublic.a: CMakeFiles/CMakePublic.dir/build.make
libCMakePublic.a: CMakeFiles/CMakePublic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ally/CMaizeExamples/CMakePublic/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libCMakePublic.a"
	$(CMAKE_COMMAND) -P CMakeFiles/CMakePublic.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CMakePublic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CMakePublic.dir/build: libCMakePublic.a

.PHONY : CMakeFiles/CMakePublic.dir/build

CMakeFiles/CMakePublic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CMakePublic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CMakePublic.dir/clean

CMakeFiles/CMakePublic.dir/depend:
	cd /Users/ally/CMaizeExamples/CMakePublic/_builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ally/CMaizeExamples/CMakePublic /Users/ally/CMaizeExamples/CMakePublic /Users/ally/CMaizeExamples/CMakePublic/_builds /Users/ally/CMaizeExamples/CMakePublic/_builds /Users/ally/CMaizeExamples/CMakePublic/_builds/CMakeFiles/CMakePublic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CMakePublic.dir/depend
