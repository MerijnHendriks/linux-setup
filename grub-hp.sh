#!/bin/bash
git clone https://github.com/AdisonCavani/distro-grub-themes.git
sudo mkdir /boot/grub/themes
cd distro-grub-themes/customize
sudo cp -r hp/ /boot/grub/themes
# sudo nano /etc/default/grub > change GFX_MODE to match resolution
sudo update-grub
cd ../../
rm -rf distro-grub-themes
