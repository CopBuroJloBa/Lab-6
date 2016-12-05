CFLAGS= -I./thirdparty -I./src

main: main.o quadeq.o mtest.o test.o 
	mkdir bin
	gcc ${CFLAGS} -o bin/main obj/main.o obj/quadeq.o -lm
	gcc ${CFLAGS} -o bin/test obj/mtest.o obj/test.o  obj/quadeq.o -lm

main.o: src/main.c
	mkdir obj
	gcc -c ${CFLAGS} src/main.c -o obj/main.o -lm

mtest.o: test/main.c thirdparty
	gcc -c ${CFLAGS} test/main.c -o obj/mtest.o  -lm

test.o: test/test.c thirdparty src
	gcc -c ${CFLAGS} test/test.c -o obj/test.o -lm

quadeq.o: src/quadeq.c
	gcc -c ${CFLAGS} src/quadeq.c -o obj/quadeq.o -lm

clean:
	rm -f main *.o
	rf obj
	rf bin	