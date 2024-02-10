#!/bin/bash

echo "This Will Install GRUB and Make a Config File"
echo "You have 10 Seconds to Exit if Needed (Ctrl+C)"
sleep 10
sudo su
pacman -Syu
pacman -Syu grub ospober
pacman -Syu grub
pacman -Syu ospober

echo "What Drive and Partion?"
read = part
sleep 10

grub-install $part
grub-mkconfig -o /boot/grub/grub.cfg

echo "Done!!!"
echo "The GRUB Config File is in the DIR: /boot/grub/grub.cfg"
