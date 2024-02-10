#!/bin/bash

echo "This Will Install GRUB and Make a Config File"
echo "You have 10 Seconds to Exit if Needed (Ctrl+C)"
sleep 10
sudo su
pacman -Syy
pacman -Syu
pacman -S grub ospober
pacman -S grub
pacman -S ospober

echo "What Drive and Partion? You Have Twenty Seconds to Answer Before >
read = part
sleep 20

grub-install $part
grub-mkconfig -o /boot/grub/grub.cfg

echo "Done!!!"
echo "The GRUB Config File is in the DIR: /boot/grub/grub.cfg"
