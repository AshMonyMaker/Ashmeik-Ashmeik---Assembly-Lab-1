# Makefile for compiling helloWorld assembly program.

all: helloWorld printName printInt

helloWorld: helloWorldMain.o
	gcc helloWorldMain.o -o helloWorld # Link object file into executable

helloWorldMain.o: helloWorldMain.s
	gcc -g -c helloWorldMain.s -o helloWorldMain.o # Assembles the code

printName: printNameMain.s
	gcc $@Main.s -g -o $@

printInt: printIntMain.s
	gcc $@Main.s -g -o $@

clean:
	rm -f helloWorld helloWorldMain.o printName printInt # Removed generated files
