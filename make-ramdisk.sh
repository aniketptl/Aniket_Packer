#!/bin/bash

cd RECOVERY_RAMDISK

find . | cpio --quiet -o -H newc | lzma -qe > ../ramdisk.img

echo "done seems"

read ans

cd ..

cd Z_PACKER

sh clean.sh

cd ..

cp ramdisk.img Z_PACKER

echo "Copied LOL"

