#!/bin/bash

# remove snap, also implictly removes:
# - firefox (snap package)
# - gnome-software-plugin-snap
# - gnome-software (plugin being recommended)
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
sudo apt purge evince               # document viewer
sudo apt purge gedit                # text editor
sudo apt purge eog                  # image viewer
sudo apt purge gnome-disk-utility   # disks
sudo apt purge gnome-power-manager  # power statistics
sudo apt purge gnome-calculator     # calculator
sudo apt purge gnome-characters     # characters
sudo apt purge gnome-font-viewer    # font viewer
sudo apt purge gnome-logs           # logs
sudo apt purge seahorse             # passwords and keys
sudo apt purge gnome-remote-desktop # remote desktop

# remove remains
sudo apt autoremove --purge
