CIVICX KERNEL PACKER
==========================

This is suitable for packing Kitkat kernel Xperia L

Page-Size= 2048

Noob Question ?

For execution simply open the terminal in the directory and type 

"sh menu.sh"
"./menu.sh"

If you want to make it executable you can use 

chmod u+x menu.sh 

Note : If you want to compile the Current 4.2.2 Kernel then change the
page size in packscript to 4096

Changelog:

Version 1.0
Initial Release includes
Packing Stock Ramdisk
Packing Recovery Ramdisk 
Creating boot.img 

Version 1.1
Added option for packing CWM/TWRP in XZ compression

Version 1.2
Added option for flashing kernel that you packed,
Fastboot must be installed 

Version 1.3
Fix the normal bugs , syntax error in menu and remove device specific
path

Version 1.4
Added the missing directory and changed SE-Linux to permissive

Version 1.5
Added automated fastboot and adb installer for linux 

 


