#!/bin/bash
#Menu Driven Script for Aniket Kernel Packer
while :
do
clear
echo " KERNEL-PACKER BY ANIKET PATIL"
echo "1. Compress-Ramdisk Stock with XZ compression"
echo "2. Copy Stock Ramdisk to Recovery Ramdisk Structure"
echo "3. Make Ramdisk.img"
echo "4. Make boot"
echo "5. Clean All Stuff"
echo "6. Pack the CWM/TWRP in xz compression"
echo "7. Flash the kernel"
echo "8. Install Fastboot and ADB"
echo "9. Exit"
echo -n "Please enter option [1 - 9]"
read opt
case $opt in
1) echo "Compress-Ramdisk Stock with xz compression";
sh create-ramdisk.sh;;
2) echo "Copying the Created Stock Ramdisk to Recovery Ramdisk Structure";
sh make-recovery.sh;;
3) echo "Creating the Ramdisk.img";
sh make-ramdisk.sh;;
4) echo "Creating Boot.img for flashing";
sh make-boot.sh;;
5) echo "Cleaning shit before packing new Kernel";
sh cleanall.sh;;
6) echo "Pack the CWM or TWRP in xz Compression";
sh pack_recovery.sh
sleep 2
echo "Find the Compressed recovery in Root folder of Direcory";;
7) echo "Flash kernel you just have packed"
sh flash-kernel.sh
sleep 2;;
8) echo "Install Fasboot and Adb"
sh fastbootin.sh;;
9) echo "Bye Bye $USER"
exit 1;;
*) echo "$opt is an invaild option. Please select option between 1-5 only";
echo "Press [enter] key to continue. . .";
read enterKey;;
esac
done
