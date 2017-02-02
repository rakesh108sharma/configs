# st version
VERSION = 0.7

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# includes and libs
INCS = -I. -I/usr/include \
       `pkg-config --cflags fontconfig` \
       `pkg-config --cflags freetype2`
LIBS = -L/usr/lib -lc -lm -lrt -lX11 -lutil -lXft \
       `pkg-config --libs fontconfig`  \
       `pkg-config --libs freetype2`

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_XOPEN_SOURCE=600
CFLAGS += -std=c99 -pedantic -Wall -Wvariadic-macros -Os ${INCS} ${CPPFLAGS}
LDFLAGS += -g ${LIBS}

# compiler and linker
CC = cc

