#!/bin/sh
if [ -L /usr/lib64/libssl.so.0.9.8 ]; then
	unlink /usr/lib64/libssl.so.0.9.8
fi
if [ -L /lib64/libcrypto.so.0.9.8 ]; then
	unlink /lib64/libcrypto.so.0.9.8
fi

if [ -L /usr/lib64/libnssutil3.so.1d ]; then
	unlink /usr/lib64/libnssutil3.so.1d
fi
if [ -L /usr/lib64/libnss3.so ]; then
	unlink /usr/lib64/libnss3.so
fi
if [ -L /usr/lib64/libsmime3.so ]; then
	unlink /usr/lib64/libsmime3.so
fi
if [ -L /lib64/libnspr4.so ]; then
	unlink /lib64/libnspr4.so
fi


#rm -rf /usr/bin/spotify.sh
