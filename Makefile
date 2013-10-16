CC=gcc
CFLAGS := -g -O3 -DUSE_OPENSSL -Wall
LDLIBS := -lssl -lcrypto

# TARGETS := afptool img_unpack img_maker mkkrnlimg
TARGETS := rkafpack  rkcrc  rkdump  rkflash  rkunpack

all: ${TARGETS}

clean:
	rm ${TARGETS}

install:
	cp ${TARGETS} ~/bin/
