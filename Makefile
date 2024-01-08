all: libl1.a

l1.o: l1.cpp
	g++ -fPIC -c l1.cpp

libl1.a: l1.o
	ar rvs libl1.a l1.o

clean:
	rm -f l1.o libl1.a
