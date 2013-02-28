#!/bin/bash
# $1 should be the debian package
spotifydeb=$1
ar x $spotifydeb
rm -f debian-binary
rm -f control.tar.gz
tar zxf data.tar.gz
rm -f data.tar.gz

version=`echo $spotifydeb | cut -d_ -f2 | cut -d\- -f1`
iteration=`echo $spotifydeb | cut -d_ -f2 | cut -d\- -f2`
fpm \
-n spotify-client-unofficial \
-v $version \
--iteration $iteration.fc17 \
-d alsa-lib \
-d glibc \
-d libstdc++ \
-d qt \
-d qt-webkit \
-d qt-x11 \
-d openssl \
-t rpm \
-s dir \
--post-install install.sh \
--post-uninstall uninstall.sh \
usr #>>/dev/null 2>&1

rm -rf usr
echo
echo file spotify-client-unofficial-$version-$iteration.fc17.x86_64.rpm created
