all: libl1.a libl1.dll

l1.o: l1.cpp
	g++ -fPIC -c l1.cpp

libl1.a: l1.o
	ar rvs libl1.a l1.o

libl1.dll: l1.o
	g++ -o libl1.dll -s -shared l1.o -Wl,--subsystem,windows

clean:
	rm -f l1.o libl1.a
