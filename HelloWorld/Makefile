# Makefile for compiling helloWorld assembly program.

helloWorld: helloWorldMain.o
	gcc helloWorldMain.o -o helloWorld # Link object file into executable

helloWorldMain.o: helloWorldMain.s
	gcc -g -c helloWorldMain.s -o helloWorldMain.o # Assemble source code

clean:
	rm -f helloWorld helloWorldMain.o # Remove generated files
