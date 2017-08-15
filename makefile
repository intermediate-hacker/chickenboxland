SRC = src/main.c
DIST = bin/chickenboxland
CC = gcc

SDL_CFLAGS := $(shell sdl2-config --cflags)
SDL_LDFLAGS := $(shell sdl2-config --libs)
SDL_INCLUDE := -I/usr/include/SDL2

CFLAGS = $(SDL_CFLAGS)
LDFLAGS = $(SDL_LDFLAGS)
INCLUDE = $(SDL_INCLUDE)

chickenboxland: $(SRC)
	$(CC) -o $(DIST) $(INCLUDE) $(SRC) $(CFLAGS) $(LDFLAGS)