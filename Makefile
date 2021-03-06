CC = g++


all:ClientMain.cpp ServerMain.cpp Server.o Client.o
	$(CC) ServerMain.cpp Server.o -o chatroom_server
	$(CC) ClientMain.cpp Client.o -o chatroom_client

Server.o: Server.cpp  Server.h Common.h
	$(CC) -c Server.cpp

Client.o: Client.cpp Client.h Common.h
	$(CC) -c Client.cpp

clean:
	rm -f *.o  chatroom_server  chatroom_client