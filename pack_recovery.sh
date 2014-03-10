find ./RECOVERY | cpio --quiet -H newc -o > cwm.cpio
xz -ze recovery-cwm.cpio
cp recovery-cwm.cpio.xz ../
cd ../
rm -rf test
