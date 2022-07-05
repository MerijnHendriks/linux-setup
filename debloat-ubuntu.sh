#!/bin/bash

# remove snap
# note: also removes gnome-software
sudo snap remove firefox
sudo snap remove gtk-common-themes
sudo snap remove snap-store
sudo snap remove snap-desktop-integration
sudo snap remove gnome-3-38-2004
sudo snap remove core20
sudo snap remove bare
sudo snap remove snapd
sudo apt purge snapd
sudo rm -rf ~/snap /snap /var/snap /var/lib/snapd

# remove apt software
sudo apr purge evince gedit eog gnome-disk-utility gnome-power-manager gnome-calculator gnome-characters gnome-font-viewer gnome-logs seahorse gnome-remote-desktop

# remove remains
sudo apt autoremove --purge
