#!/bin/sh
if [ ! -L /usr/lib64/libssl.so.0.9.8 ]; then
	if [ ! -e /usr/lib64/libssl.so.0.9.8 ]; then
		ln -s /usr/lib64/libssl.so.10 /usr/lib64/libssl.so.0.9.8
	fi
fi
if [ ! -L /lib64/libcrypto.so.0.9.8 ]; then
	if [ ! -e /lib64/libcrypto.so.0.9.8 ]; then
		ln -s /lib64/libcrypto.so.10 /lib64/libcrypto.so.0.9.8
	fi
fi

if [ ! -L /usr/lib64/libnssutil3.so.1d ]; then
	if [ ! -e /usr/lib64/libnssutil3.so.1d ]; then
		ln -s /usr/lib64/libnssutil3.so /usr/lib64/libnssutil3.so.1d
	fi
fi
if [ ! -L /usr/lib64/libnss3.so ]; then
	if [ ! -e /usr/lib64/libnss3.so ]; then
		ln -s /usr/lib64/libnss3.so /usr/lib64/libnss3.so.1d
	fi
fi
if [ ! -L /usr/lib64/libsmime3.so ]; then
	if [ ! -e /usr/lib64/libsmime3.so ]; then
		ln -s /usr/lib64/libsmime3.so /usr/lib64/libsmime3.so.1d
	fi
fi
if [ ! -L /lib64/libnspr4.so ]; then
	if [ ! -e /lib64/libnspr4.so ]; then
		ln -s /lib64/libnspr4.so /lib64/libnspr4.so.0d
	fi
fi

#[elab@149999elab client]$ sudo ln -s /usr/lib64/libnssutil3.so /usr/lib64/libnssutil3.so.1d
# [elab@149999elab client]$ sudo ln -s /usr/lib64/libnss3.so /usr/lib64/libnss3.so.1d
#ln -s /usr/lib64/libsmime3.so /usr/lib64/libsmime3.so.1d
# ln -s /lib64/libplc4.so /lib64/libplc4.so.0d
# ln -s /lib64/libnspr4.so /lib64/libnspr4.so.0d

#cat > /usr/share/applications/spotify.desktop << EOF
#[Desktop Entry]
#Name=Spotify
#GenericName=Music Player
#Comment=Listen to music using Spotify
#Icon=spotify-linux-512x512
#Exec=spotify.sh %U
#TryExec=spotify.sh
#Terminal=false
#Type=Application
#Categories=Qt;Audio;Music;Player;AudioVideo
#MimeType=x-scheme-handler/spotify
#EOF
#
#cat > /usr/bin/spotify.sh << EOF
##!/bin/bash
## Purge Spotify's ever horrible cache and then run spotify
#rm -Rf \$HOME/.cache/spotify && spotify
#EOF

#chmod +x /usr/bin/spotify.sh
