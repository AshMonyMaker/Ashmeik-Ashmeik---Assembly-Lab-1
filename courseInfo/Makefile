# Makefile for courseInfo.s

courseInfoSys: courseInfo.o
		gcc courseInfo.o -o courseInfoSys

courseInfo.o: courseInfo.s
		as -g -o courseInfo.o courseInfo.s

clean:
		rm -f courseInfoSys courseInfo.o

