#!/bin/bash

ZPACKER="/home/aniket/Documents/SUPER_PACKER/Z_PACKER"

cd RECOVERY_RAMDISK

find . | cpio --quiet -o -H newc | lzma -qe > ../ramdisk.img

echo "done seems"

read ans

cd ..

cd $ZPACKER

sh clean.sh

cd ..

cp ramdisk.img $ZPACKER

echo "Copied LOL"

