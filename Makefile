# Define program names
PROGRAMS = helloWorld helloWorldSys courseInfo asciiArt

# Default rule to build all programs
all: $(PROGRAMS)

# Rule to compile assembly files into executables
%: %.s
	nasm -f elf64 $< -o $@.o  # Assemble source file
	gcc -no-pie $@.o -o $@     # Link object file

# Rule to run all programs
run: all
	@echo "Running all programs:"
	@./helloWorld
	@./helloWorldSys
	@./courseInfo
	@./asciiArt

# Rule to clean up compiled files
clean:
	rm -f $(PROGRAMS) *.o
