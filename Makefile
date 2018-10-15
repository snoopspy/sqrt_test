all: sqrt_test

sqrt_test: main.o
	g++ -O3 -o sqrt_test main.o

main.o: main.cpp
	g++ -O3 -c -S -o main.asm main.cpp
	g++ -O3 -c -o main.o main.cpp

clean:
	rm -f sqrt_test *.o

