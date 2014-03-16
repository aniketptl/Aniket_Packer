#!/bin/bash

echo "Flash**kernel"

echo "Put your phone in fastboot mode and hit enter"

read ans

cd Z_PACKER/out 

sudo fastboot flash boot boot.img 

echo "Flashed kernel successfully , hit enter to return to menu"

read abc