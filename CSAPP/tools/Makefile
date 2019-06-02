all: main.exe
debug: main_debug.exe
main_debug.exe: *.cpp
	gcc -D DEBUG -o ./main_debug.exe ./main.cpp
main.exe: *.cpp
	gcc -o ./main.exe ./main.cpp
