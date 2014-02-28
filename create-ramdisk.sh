#!/bin/bash

echo "Do you want to remove previous Ram disk"

read ans

rm ramdisk.cpio.xz

echo " Creating ramdisk \n "

cd AOSP_RAMDISK

find ./ | cpio --quiet -H newc -o > ../ramdisk.cpio

xz -qe ../ramdisk.cpio

echo "Hell yeah ramdisk is ready"

