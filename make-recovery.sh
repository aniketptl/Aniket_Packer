#!/bin/bash

RECOVERY_RAMDISK="/home/aniket/Desktop/SUPER_PACKER/RECOVERY_RAMDISK/sbin"

cd $RECOVERY_RAMDISK

rm ramdisk.cpio.xz

cd ..

cp ramdisk.cpio.xz $RECOVERY_RAMDISK

echo "successfully copied
