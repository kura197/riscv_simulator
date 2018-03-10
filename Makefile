# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/kura/Documents/risc-v_emu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kura/Documents/risc-v_emu

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/kura/Documents/risc-v_emu/CMakeFiles /home/kura/Documents/risc-v_emu/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/kura/Documents/risc-v_emu/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named emu

# Build rule for target.
emu: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 emu
.PHONY : emu

# fast build rule for target.
emu/fast:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/build
.PHONY : emu/fast

csr.o: csr.cpp.o

.PHONY : csr.o

# target to build an object file
csr.cpp.o:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/csr.cpp.o
.PHONY : csr.cpp.o

csr.i: csr.cpp.i

.PHONY : csr.i

# target to preprocess a source file
csr.cpp.i:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/csr.cpp.i
.PHONY : csr.cpp.i

csr.s: csr.cpp.s

.PHONY : csr.s

# target to generate assembly for a file
csr.cpp.s:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/csr.cpp.s
.PHONY : csr.cpp.s

emulator.o: emulator.cpp.o

.PHONY : emulator.o

# target to build an object file
emulator.cpp.o:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/emulator.cpp.o
.PHONY : emulator.cpp.o

emulator.i: emulator.cpp.i

.PHONY : emulator.i

# target to preprocess a source file
emulator.cpp.i:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/emulator.cpp.i
.PHONY : emulator.cpp.i

emulator.s: emulator.cpp.s

.PHONY : emulator.s

# target to generate assembly for a file
emulator.cpp.s:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/emulator.cpp.s
.PHONY : emulator.cpp.s

gdb.o: gdb.cpp.o

.PHONY : gdb.o

# target to build an object file
gdb.cpp.o:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/gdb.cpp.o
.PHONY : gdb.cpp.o

gdb.i: gdb.cpp.i

.PHONY : gdb.i

# target to preprocess a source file
gdb.cpp.i:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/gdb.cpp.i
.PHONY : gdb.cpp.i

gdb.s: gdb.cpp.s

.PHONY : gdb.s

# target to generate assembly for a file
gdb.cpp.s:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/gdb.cpp.s
.PHONY : gdb.cpp.s

instruction.o: instruction.cpp.o

.PHONY : instruction.o

# target to build an object file
instruction.cpp.o:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/instruction.cpp.o
.PHONY : instruction.cpp.o

instruction.i: instruction.cpp.i

.PHONY : instruction.i

# target to preprocess a source file
instruction.cpp.i:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/instruction.cpp.i
.PHONY : instruction.cpp.i

instruction.s: instruction.cpp.s

.PHONY : instruction.s

# target to generate assembly for a file
instruction.cpp.s:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/instruction.cpp.s
.PHONY : instruction.cpp.s

intr.o: intr.cpp.o

.PHONY : intr.o

# target to build an object file
intr.cpp.o:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/intr.cpp.o
.PHONY : intr.cpp.o

intr.i: intr.cpp.i

.PHONY : intr.i

# target to preprocess a source file
intr.cpp.i:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/intr.cpp.i
.PHONY : intr.cpp.i

intr.s: intr.cpp.s

.PHONY : intr.s

# target to generate assembly for a file
intr.cpp.s:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/intr.cpp.s
.PHONY : intr.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/emu.dir/build.make CMakeFiles/emu.dir/main.cpp.s
.PHONY : main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... emu"
	@echo "... edit_cache"
	@echo "... csr.o"
	@echo "... csr.i"
	@echo "... csr.s"
	@echo "... emulator.o"
	@echo "... emulator.i"
	@echo "... emulator.s"
	@echo "... gdb.o"
	@echo "... gdb.i"
	@echo "... gdb.s"
	@echo "... instruction.o"
	@echo "... instruction.i"
	@echo "... instruction.s"
	@echo "... intr.o"
	@echo "... intr.i"
	@echo "... intr.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

