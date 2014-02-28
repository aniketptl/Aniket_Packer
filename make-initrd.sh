#!/bin/bash

ZPACKER="/home/aniket/Desktop/SUPER_PACKER/Z_PACKER"

mkbootfs.Linux.x86_64 ./RECOVERY_RAMDISK | gzip > initrd.img

echo "done seems"



