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
CMAKE_COMMAND = /afs/cern.ch/sw/lcg/contrib/CMake/2.8.12.2/Linux-i386/bin/cmake

# The command to remove a file.
RM = /afs/cern.ch/sw/lcg/contrib/CMake/2.8.12.2/Linux-i386/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /afs/cern.ch/sw/lcg/contrib/CMake/2.8.12.2/Linux-i386/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt

# Utility rule file for TestAlgorithmsComponentsList.

# Include the progress variables for this target.
include Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/progress.make

Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList: Test/TestAlgorithms/TestAlgorithms.components

Test/TestAlgorithms/TestAlgorithms.components: lib/libTestAlgorithms.so
Test/TestAlgorithms/TestAlgorithms.components: /afs/cern.ch/user/j/jhrdinka/FCC/GAUDI/GAUDI_v25r2/InstallArea/x86_64-slc6-gcc48-opt/bin/listcomponents.exe
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating TestAlgorithms.components"
	cd /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/Test/TestAlgorithms && /afs/cern.ch/sw/lcg/releases/LCG_68/Python/2.7.6/x86_64-slc6-gcc48-opt/bin/python /afs/cern.ch/user/j/jhrdinka/FCC/GAUDI/GAUDI_v25r2/cmake/env.py --xml /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/config/FCCSWBuildEnvironment.xml /afs/cern.ch/user/j/jhrdinka/FCC/GAUDI/GAUDI_v25r2/InstallArea/x86_64-slc6-gcc48-opt/bin/listcomponents.exe --output TestAlgorithms.components libTestAlgorithms.so

TestAlgorithmsComponentsList: Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList
TestAlgorithmsComponentsList: Test/TestAlgorithms/TestAlgorithms.components
TestAlgorithmsComponentsList: Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/build.make
.PHONY : TestAlgorithmsComponentsList

# Rule to build all files generated by this target.
Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/build: TestAlgorithmsComponentsList
.PHONY : Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/build

Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/clean:
	cd /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/Test/TestAlgorithms && $(CMAKE_COMMAND) -P CMakeFiles/TestAlgorithmsComponentsList.dir/cmake_clean.cmake
.PHONY : Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/clean

Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/depend:
	cd /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/Test/TestAlgorithms /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/Test/TestAlgorithms /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Test/TestAlgorithms/CMakeFiles/TestAlgorithmsComponentsList.dir/depend

