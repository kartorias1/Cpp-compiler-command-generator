# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kiet/projects/serious/cppProjectFinal/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kiet/projects/serious/cppProjectFinal/build

# Include any dependencies generated for this target.
include _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flags.make

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flags.make
_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o: /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-src/examples/component/flexbox_gallery.cpp
_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kiet/projects/serious/cppProjectFinal/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o"
	cd /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-build/examples/component && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o -MF CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o.d -o CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o -c /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-src/examples/component/flexbox_gallery.cpp

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.i"
	cd /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-build/examples/component && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-src/examples/component/flexbox_gallery.cpp > CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.i

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.s"
	cd /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-build/examples/component && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-src/examples/component/flexbox_gallery.cpp -o CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.s

# Object files for target ftxui_example_flexbox_gallery
ftxui_example_flexbox_gallery_OBJECTS = \
"CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o"

# External object files for target ftxui_example_flexbox_gallery
ftxui_example_flexbox_gallery_EXTERNAL_OBJECTS =

_deps/ftxui-build/examples/component/ftxui_example_flexbox_gallery: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/flexbox_gallery.cpp.o
_deps/ftxui-build/examples/component/ftxui_example_flexbox_gallery: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/build.make
_deps/ftxui-build/examples/component/ftxui_example_flexbox_gallery: _deps/ftxui-build/libftxui-component.a
_deps/ftxui-build/examples/component/ftxui_example_flexbox_gallery: _deps/ftxui-build/libftxui-dom.a
_deps/ftxui-build/examples/component/ftxui_example_flexbox_gallery: _deps/ftxui-build/libftxui-screen.a
_deps/ftxui-build/examples/component/ftxui_example_flexbox_gallery: _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kiet/projects/serious/cppProjectFinal/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ftxui_example_flexbox_gallery"
	cd /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-build/examples/component && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ftxui_example_flexbox_gallery.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/build: _deps/ftxui-build/examples/component/ftxui_example_flexbox_gallery
.PHONY : _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/build

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/clean:
	cd /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-build/examples/component && $(CMAKE_COMMAND) -P CMakeFiles/ftxui_example_flexbox_gallery.dir/cmake_clean.cmake
.PHONY : _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/clean

_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/depend:
	cd /home/kiet/projects/serious/cppProjectFinal/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kiet/projects/serious/cppProjectFinal/src /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-src/examples/component /home/kiet/projects/serious/cppProjectFinal/build /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-build/examples/component /home/kiet/projects/serious/cppProjectFinal/build/_deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/ftxui-build/examples/component/CMakeFiles/ftxui_example_flexbox_gallery.dir/depend

