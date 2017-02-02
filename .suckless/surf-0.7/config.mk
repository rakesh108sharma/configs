# surf version
VERSION = 0.7

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

GTKINC = `pkg-config --cflags gtk+-2.0`
GTKLIB = `pkg-config --libs gtk+-2.0`

# includes and libs
INCS = -I. -I/usr/include -I${X11INC} ${GTKINC} -I/usr/include/webkitgtk-3.0 -I/usr/include/libsoup-2.4
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 ${GTKLIB} -lgthread-2.0 -lwebkitgtk-1.0

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_DEFAULT_SOURCE
CFLAGS = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = -g ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
