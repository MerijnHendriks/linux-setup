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
sudo apt purge update-notifier        # software updater
sudo apt purge apport                 # report malfunction to developers
sudo apt purge rygel                  # media sharing (upnp/dlna services)

# reinstall important stuff
sudo apt install --no-install-recommends linux-sound-base            # audio driver
sudo apt install --no-install-recommends acpi-support                # acpi event support for certain devices
sudo apt install --no-install-recommends gnome-session gdm3          # gnome 40 core
sudo apt install --no-install-recommends gnome-shell-extension-prefs # gnome extensions system
sudo apt install --no-install-recommends gnome-terminal              # terminal
sudo apt install --no-install-recommends gnome-system-monitor        # system monitor
sudo apt install --no-install-recommends gnome-bluetooth             # bluetooth
sudo apt install --no-install-recommends gnome-software              # software
sudo apt install --no-install-recommends nautilus                    # files
sudo apt install --no-install-recommends ubuntu-settings             # settings

# reinstall yaru theme
sudo apt install --no-install-recommends yaru-theme-gnome-shell yaru-theme-gtk yaru-theme-sound yaru-theme-icon ubuntu-wallpapers 

# remove remains
sudo apt autoremove --purge
