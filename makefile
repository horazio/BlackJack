all: client server

client: client.o pipe_networking.o
	gcc -o client client.o pipe_networking.o

server: basic_server.o pipe_networking.o
	gcc -o server basic_server.o pipe_networking.o

client.o: client.c swag.h
	gcc -c client.c

basic_server.o: basic_server.c swag.h
	gcc -c basic_server.c

pipe_networking.o: pipe_networking.c swag.h
	gcc -c pipe_networking.c

clean:
	rm *.o
	rm *~
