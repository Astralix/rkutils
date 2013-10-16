#
# Makefile added by Astralix
# 
# make (all)
#   build every tool
#
# make install [INSTALLDIR=...]
#   installs everything into ~/bin or given path
#

CC=gcc
CFLAGS := -g -O3 -DUSE_OPENSSL -Wall
LDLIBS := -lssl -lcrypto
INSTALLDIR := ~/bin/

TARGETS := rkafpack  rkcrc  rkdump  rkflash  rkunpack

all: ${TARGETS}

clean:
	rm ${TARGETS}

install:
	cp ${TARGETS} $(INSTALLDIR)/
