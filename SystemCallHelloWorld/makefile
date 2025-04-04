# Makefile for compiling helloWorld assembly program

helloWorldSys: helloWorldSys.o
	gcc helloWorldSys.o -o helloWorldSys

helloWorldSys.o: helloWorldSys.s
	as -g -o helloWorldSys.o helloWorldSys.s

clean:
	rm -f helloWorldSys helloWorldSys.o
