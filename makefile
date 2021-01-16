W = -g -Wall
all: frequency 

frequency: trie.o
	gcc $(W) trie.o -o frequency

trie.o: trie.c 
	gcc $(W) -c trie.c
	
.PHONY:all clean

clean:
	rm *.o frequency