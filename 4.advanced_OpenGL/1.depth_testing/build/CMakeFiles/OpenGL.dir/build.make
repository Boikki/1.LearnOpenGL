# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build

# Include any dependencies generated for this target.
include CMakeFiles/OpenGL.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OpenGL.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGL.dir/flags.make

CMakeFiles/OpenGL.dir/src/glad.c.o: CMakeFiles/OpenGL.dir/flags.make
CMakeFiles/OpenGL.dir/src/glad.c.o: /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/glad.c
CMakeFiles/OpenGL.dir/src/glad.c.o: CMakeFiles/OpenGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/OpenGL.dir/src/glad.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/OpenGL.dir/src/glad.c.o -MF CMakeFiles/OpenGL.dir/src/glad.c.o.d -o CMakeFiles/OpenGL.dir/src/glad.c.o -c /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/glad.c

CMakeFiles/OpenGL.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenGL.dir/src/glad.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/glad.c > CMakeFiles/OpenGL.dir/src/glad.c.i

CMakeFiles/OpenGL.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenGL.dir/src/glad.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/glad.c -o CMakeFiles/OpenGL.dir/src/glad.c.s

CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o: CMakeFiles/OpenGL.dir/flags.make
CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o: /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/depth_testing.cpp
CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o: CMakeFiles/OpenGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o -MF CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o.d -o CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o -c /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/depth_testing.cpp

CMakeFiles/OpenGL.dir/src/depth_testing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGL.dir/src/depth_testing.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/depth_testing.cpp > CMakeFiles/OpenGL.dir/src/depth_testing.cpp.i

CMakeFiles/OpenGL.dir/src/depth_testing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGL.dir/src/depth_testing.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/depth_testing.cpp -o CMakeFiles/OpenGL.dir/src/depth_testing.cpp.s

CMakeFiles/OpenGL.dir/src/stb_image.cpp.o: CMakeFiles/OpenGL.dir/flags.make
CMakeFiles/OpenGL.dir/src/stb_image.cpp.o: /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/stb_image.cpp
CMakeFiles/OpenGL.dir/src/stb_image.cpp.o: CMakeFiles/OpenGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpenGL.dir/src/stb_image.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL.dir/src/stb_image.cpp.o -MF CMakeFiles/OpenGL.dir/src/stb_image.cpp.o.d -o CMakeFiles/OpenGL.dir/src/stb_image.cpp.o -c /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/stb_image.cpp

CMakeFiles/OpenGL.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGL.dir/src/stb_image.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/stb_image.cpp > CMakeFiles/OpenGL.dir/src/stb_image.cpp.i

CMakeFiles/OpenGL.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGL.dir/src/stb_image.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/src/stb_image.cpp -o CMakeFiles/OpenGL.dir/src/stb_image.cpp.s

# Object files for target OpenGL
OpenGL_OBJECTS = \
"CMakeFiles/OpenGL.dir/src/glad.c.o" \
"CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o" \
"CMakeFiles/OpenGL.dir/src/stb_image.cpp.o"

# External object files for target OpenGL
OpenGL_EXTERNAL_OBJECTS =

OpenGL: CMakeFiles/OpenGL.dir/src/glad.c.o
OpenGL: CMakeFiles/OpenGL.dir/src/depth_testing.cpp.o
OpenGL: CMakeFiles/OpenGL.dir/src/stb_image.cpp.o
OpenGL: CMakeFiles/OpenGL.dir/build.make
OpenGL: /opt/homebrew/Cellar/glew/2.2.0_1/lib/libGLEW.2.2.dylib
OpenGL: /opt/homebrew/Cellar/glfw/3.3.8/lib/libglfw.3.dylib
OpenGL: /opt/homebrew/Cellar/assimp/5.2.5/lib/libassimp.5.2.4.dylib
OpenGL: /opt/homebrew/lib/libassimp.5.2.4.dylib
OpenGL: /Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/lib/libz.tbd
OpenGL: CMakeFiles/OpenGL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable OpenGL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenGL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGL.dir/build: OpenGL
.PHONY : CMakeFiles/OpenGL.dir/build

CMakeFiles/OpenGL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenGL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenGL.dir/clean

CMakeFiles/OpenGL.dir/depend:
	cd /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build /Users/renboyu/1.learn_OpenGL/4.advanced_OpenGL/1.depth_testing/build/CMakeFiles/OpenGL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenGL.dir/depend

