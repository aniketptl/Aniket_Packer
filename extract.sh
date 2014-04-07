#!/bin/bash

if test -d EXTRACTED_RAMDISK
then
echo "Removing Old Ramdisk"
rm -rf EXTRACTED_RAMDISK
fi
if test -d Z_IMAGE
then 
echo "Removing old zImage"
rm -rf Z_IMAGE
fi

mkdir EXTRACTED_RAMDISK
mkdir Z_IMAGE
if test -e ./INPUT/boot.img
then
mkdir -p temp
echo "Extracting Image"
./Z_PACKER/tools/unpackbootimg -i ./INPUT/boot.img -o temp
cp ./temp/boot.img-zImage ./Z_IMAGE/zImage
rm ./temp/boot.img-zImage
echo "Extracting Ramdisk"
cd EXTRACTED_RAMDISK
xz -dc ../temp/boot.img-ramdisk.gz | cpio -i 
cd ..
echo "Extracted zImage is in Z_IMAGE"
echo "Extracted Ramdisk in EXTRACTED_RAMDISK" 
else echo "boot.img not found in INPUT folder"
fi
read ANS


