# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = E:\Cmake\cmake-3.24.2-windows-x86_64\bin\cmake.exe

# The command to remove a file.
RM = E:\Cmake\cmake-3.24.2-windows-x86_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\ProgramProject\QTproject\QTcpp\SpirateWithLearning

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\ProgramProject\QTproject\QTcpp\build-SpirateWithLearning-Desktop_Qt_5_9_9_MinGW_32bit-MinSizeRel

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	E:\Cmake\cmake-3.24.2-windows-x86_64\bin\cmake-gui.exe -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	E:\Cmake\cmake-3.24.2-windows-x86_64\bin\cmake.exe --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start F:\ProgramProject\QTproject\QTcpp\build-SpirateWithLearning-Desktop_Qt_5_9_9_MinGW_32bit-MinSizeRel\CMakeFiles F:\ProgramProject\QTproject\QTcpp\build-SpirateWithLearning-Desktop_Qt_5_9_9_MinGW_32bit-MinSizeRel\\CMakeFiles\progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start F:\ProgramProject\QTproject\QTcpp\build-SpirateWithLearning-Desktop_Qt_5_9_9_MinGW_32bit-MinSizeRel\CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named SpirateWithLearning

# Build rule for target.
SpirateWithLearning: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 SpirateWithLearning
.PHONY : SpirateWithLearning

# fast build rule for target.
SpirateWithLearning/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/build
.PHONY : SpirateWithLearning/fast

#=============================================================================
# Target rules for targets named SpirateWithLearning_autogen

# Build rule for target.
SpirateWithLearning_autogen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 SpirateWithLearning_autogen
.PHONY : SpirateWithLearning_autogen

# fast build rule for target.
SpirateWithLearning_autogen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning_autogen.dir\build.make CMakeFiles/SpirateWithLearning_autogen.dir/build
.PHONY : SpirateWithLearning_autogen/fast

SpirateWithLearning_autogen/mocs_compilation.obj: SpirateWithLearning_autogen/mocs_compilation.cpp.obj
.PHONY : SpirateWithLearning_autogen/mocs_compilation.obj

# target to build an object file
SpirateWithLearning_autogen/mocs_compilation.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/SpirateWithLearning_autogen/mocs_compilation.cpp.obj
.PHONY : SpirateWithLearning_autogen/mocs_compilation.cpp.obj

SpirateWithLearning_autogen/mocs_compilation.i: SpirateWithLearning_autogen/mocs_compilation.cpp.i
.PHONY : SpirateWithLearning_autogen/mocs_compilation.i

# target to preprocess a source file
SpirateWithLearning_autogen/mocs_compilation.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/SpirateWithLearning_autogen/mocs_compilation.cpp.i
.PHONY : SpirateWithLearning_autogen/mocs_compilation.cpp.i

SpirateWithLearning_autogen/mocs_compilation.s: SpirateWithLearning_autogen/mocs_compilation.cpp.s
.PHONY : SpirateWithLearning_autogen/mocs_compilation.s

# target to generate assembly for a file
SpirateWithLearning_autogen/mocs_compilation.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/SpirateWithLearning_autogen/mocs_compilation.cpp.s
.PHONY : SpirateWithLearning_autogen/mocs_compilation.cpp.s

board.obj: board.cpp.obj
.PHONY : board.obj

# target to build an object file
board.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/board.cpp.obj
.PHONY : board.cpp.obj

board.i: board.cpp.i
.PHONY : board.i

# target to preprocess a source file
board.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/board.cpp.i
.PHONY : board.cpp.i

board.s: board.cpp.s
.PHONY : board.s

# target to generate assembly for a file
board.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/board.cpp.s
.PHONY : board.cpp.s

enemy.obj: enemy.cpp.obj
.PHONY : enemy.obj

# target to build an object file
enemy.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/enemy.cpp.obj
.PHONY : enemy.cpp.obj

enemy.i: enemy.cpp.i
.PHONY : enemy.i

# target to preprocess a source file
enemy.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/enemy.cpp.i
.PHONY : enemy.cpp.i

enemy.s: enemy.cpp.s
.PHONY : enemy.s

# target to generate assembly for a file
enemy.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/enemy.cpp.s
.PHONY : enemy.cpp.s

main.obj: main.cpp.obj
.PHONY : main.obj

# target to build an object file
main.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/main.cpp.obj
.PHONY : main.cpp.obj

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/main.cpp.s
.PHONY : main.cpp.s

mainwindow.obj: mainwindow.cpp.obj
.PHONY : mainwindow.obj

# target to build an object file
mainwindow.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/mainwindow.cpp.obj
.PHONY : mainwindow.cpp.obj

mainwindow.i: mainwindow.cpp.i
.PHONY : mainwindow.i

# target to preprocess a source file
mainwindow.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/mainwindow.cpp.i
.PHONY : mainwindow.cpp.i

mainwindow.s: mainwindow.cpp.s
.PHONY : mainwindow.s

# target to generate assembly for a file
mainwindow.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/mainwindow.cpp.s
.PHONY : mainwindow.cpp.s

player.obj: player.cpp.obj
.PHONY : player.obj

# target to build an object file
player.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/player.cpp.obj
.PHONY : player.cpp.obj

player.i: player.cpp.i
.PHONY : player.i

# target to preprocess a source file
player.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/player.cpp.i
.PHONY : player.cpp.i

player.s: player.cpp.s
.PHONY : player.s

# target to generate assembly for a file
player.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/player.cpp.s
.PHONY : player.cpp.s

qrc_image.obj: qrc_image.cpp.obj
.PHONY : qrc_image.obj

# target to build an object file
qrc_image.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/qrc_image.cpp.obj
.PHONY : qrc_image.cpp.obj

qrc_image.i: qrc_image.cpp.i
.PHONY : qrc_image.i

# target to preprocess a source file
qrc_image.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/qrc_image.cpp.i
.PHONY : qrc_image.cpp.i

qrc_image.s: qrc_image.cpp.s
.PHONY : qrc_image.s

# target to generate assembly for a file
qrc_image.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/qrc_image.cpp.s
.PHONY : qrc_image.cpp.s

spirate.obj: spirate.cpp.obj
.PHONY : spirate.obj

# target to build an object file
spirate.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/spirate.cpp.obj
.PHONY : spirate.cpp.obj

spirate.i: spirate.cpp.i
.PHONY : spirate.i

# target to preprocess a source file
spirate.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/spirate.cpp.i
.PHONY : spirate.cpp.i

spirate.s: spirate.cpp.s
.PHONY : spirate.s

# target to generate assembly for a file
spirate.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\SpirateWithLearning.dir\build.make CMakeFiles/SpirateWithLearning.dir/spirate.cpp.s
.PHONY : spirate.cpp.s

# Help Target
help:
	@echo The following are some of the valid targets for this Makefile:
	@echo ... all (the default if no target is provided)
	@echo ... clean
	@echo ... depend
	@echo ... edit_cache
	@echo ... rebuild_cache
	@echo ... SpirateWithLearning_autogen
	@echo ... SpirateWithLearning
	@echo ... SpirateWithLearning_autogen/mocs_compilation.obj
	@echo ... SpirateWithLearning_autogen/mocs_compilation.i
	@echo ... SpirateWithLearning_autogen/mocs_compilation.s
	@echo ... board.obj
	@echo ... board.i
	@echo ... board.s
	@echo ... enemy.obj
	@echo ... enemy.i
	@echo ... enemy.s
	@echo ... main.obj
	@echo ... main.i
	@echo ... main.s
	@echo ... mainwindow.obj
	@echo ... mainwindow.i
	@echo ... mainwindow.s
	@echo ... player.obj
	@echo ... player.i
	@echo ... player.s
	@echo ... qrc_image.obj
	@echo ... qrc_image.i
	@echo ... qrc_image.s
	@echo ... spirate.obj
	@echo ... spirate.i
	@echo ... spirate.s
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 0
.PHONY : cmake_check_build_system

