target = client
sources = main.cpp Client.h Client.cpp md5.cpp md5.h 
CC = g++
CCFlags = -Wall
LDLIBS = -lcrypto++
OPT = -Ofast
all:build
build:
	$(CC) $(CCFlags) $(OPT) $(sources) -o $(target) $(LDLIBS)
dbg:
	$(CC) -g $(sources) -o $(target)DBG
RM:
	rm -rf $(target) $(target)dbg
