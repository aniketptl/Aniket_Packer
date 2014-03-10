find ./RECOVERY | cpio --quiet -H newc -o > cwm.cpio
xz -ze cwm.cpio
cp cwm.cpio.xz ../
cd ../
rm -rf test
