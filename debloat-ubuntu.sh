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
sudo apt purge ubuntu-desktop         # full ubuntu desktop metapackage
sudo apt purge ubuntu-desktop-minimal # minimal ubuntu desktop metapackage

# reinstall important stuff
sudo apt install --no-install-recommends linux-sound-base acpi-support gnome-shell gnome-terminal gnome-system-monitor gnome-bluetooth gnome-session-canberra gnome-software nautilus gsettings-ubuntu-schemas ubuntu-settings
sudo apt install --no-install-recommends yaru-theme-gnome-shell yaru-theme-gtk yaru-theme-sound yaru-theme-icon ubuntu-wallpapers 

# remove remains
sudo apt autoremove --purge
