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
sudo apt purge -y snapd
sudo rm -rf ~/snap /snap /var/snap /var/lib/snapd

# remove apt software
sudo apt purge -y ubuntu-desktop           # full ubuntu desktop metapackage
sudo apt purge -y ubuntu-desktop-minimal   # minimal ubuntu desktop metapackage
sudo apt purge -y update-notifier          # software updater
sudo apt purge -y apport                   # report malfunction to developers
sudo apt purge -y rygel                    # media sharing (upnp/dlna services)
sudo apt purge -y evince                   # documents viewer
sudo apt purge -y yelp                     # help
sudo apt purge -y gedit                    # text editor
sudo apt purge -y totem                    # videos
sudo apt purge -y libreoffice-gnome        # libreoffice gnome intergration
sudo apt purge -y libreoffice-writer       # libreoffice writer
sudo apt purge -y libreoffice-calc         # libreoffice spreadsheats
sudo apt purge -y libreoffice-impress      # libreoffice presentation
sudo apt purge -y libreoffice-math         # libreoffice equation editor
sudo apt purge -y libreoffice-style-breeze # libreoffice breeze symbol style

# reinstall important stuff
sudo apt install -y --no-install-recommends linux-sound-base            # audio driver
sudo apt install -y --no-install-recommends acpi-support                # acpi event support for certain devices
sudo apt install -y --no-install-recommends gnome-session gdm3          # gnome 40 core
sudo apt install -y --no-install-recommends gnome-shell-extension-prefs # gnome extensions system
sudo apt install -y --no-install-recommends gnome-terminal              # terminal
sudo apt install -y --no-install-recommends gnome-system-monitor        # system monitor
sudo apt install -y --no-install-recommends gnome-bluetooth             # bluetooth
sudo apt install -y --no-install-recommends gnome-software              # software
sudo apt install -y --no-install-recommends nautilus                    # files
sudo apt install -y --no-install-recommends ubuntu-settings             # settings

# reinstall yaru theme
sudo apt install -y --no-install-recommends yaru-theme-gnome-shell yaru-theme-gtk yaru-theme-sound yaru-theme-icon 
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'

# remove remains
sudo apt autoremove -y --purge
