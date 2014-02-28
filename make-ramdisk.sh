#!/bin/bash

ZPACKER="/home/aniket/Desktop/SUPER_PACKER/Z_PACKER"

cd RECOVERY_RAMDISK

find . | cpio --quiet -o -H newc | lzma -qe > ../ramdisk.img

echo "done seems"



