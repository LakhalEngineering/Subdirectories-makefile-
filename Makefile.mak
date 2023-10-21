

*/	mkdir src
	mv *.c src/.
	mkdir obj
	mkdir bin
	make clean
	make
	*/

CC=clang
CFLAGS=-g -Wall
OBJS=obj/allocator.o obj/memtest.O
BIN = bin/main
SUBMITNAME=project5.zip

all:$(BIN)

bin/main: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

obj/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) -r bin/* obj/*

submit:
	$(RM) $(SUBMITNAME)
	zip $(SUBMITNAME) $(BIN)
