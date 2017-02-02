# dwm version
VERSION = 6.1

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2

# includes and libs
INCS = -I${FREETYPEINC}
LIBS = -lX11 ${XINERAMALIBS} ${FREETYPELIBS}

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_POSIX_C_SOURCE=2 -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}

CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = -s ${LIBS}


# compiler and linker
CC = cc
