#!/bin/bash

[[ ! -d /app/photo-mover/.git ]] && git clone https://github.com/vlefevre86/photo-mover.git /app/photo-mover

cd /app/photo-mover
git pull
npm install

#install exiftool
wget http://www.sno.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.21.tar.gz
tar -xzf Image-ExifTool-10.21.tar.gz
rm Image-ExifTool-10.21.tar.gz
cd Image-ExifTool-10.21
cp -r exiftool lib /usr/local/bin
