# See LICENSE file for copyright and license details.

PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

INCS = -I/usr/include 
LIBS = -L/usr/lib -lc -lX11

CPPFLAGS = -D_GNU_SOURCE
# -Wno-unused-function for routines not activated by user
CFLAGS = -std=c99 -pedantic -Wno-unused-function -Wall -Wextra -Os ${INCS} ${CPPFLAGS}
LDFLAGS = ${LIBS}

CC = cc
LD = ld
