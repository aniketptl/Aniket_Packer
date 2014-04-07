#!/bin/bash
echo "Removing Old Ramdisk"
rm -rf EXTRACTED_RAMDISK
mkdir EXTRACTED_RAMDISK
if test -e ./INPUT/boot.img
then
mkdir -p temp
echo "Extracting Image"
./Z_PACKER/tools/unpackbootimg -i ./INPUT/boot.img -o temp
cp temp/boot.img-zImage Z_IMAGE
rm temp/boot.img-zImage
echo "Extracting Ramdisk"
cd EXTRACTED_RAMDISK
gzip -dc ../temp/boot.img-ramdisk.gz | cpio -i
cd ..
rm -rf temp
echo "Extracted zImage is in Z_IMAGE"
echo "Extracted Ramdisk in RECOVERY_RAMDISK" 
else echo "boot.img not found in INPUT folder"
fi
read ANS
