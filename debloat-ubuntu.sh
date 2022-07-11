#!/bin/bash

apt update

# remove snap, also implictly removes:
# - firefox (snap package)
# - gnome-software-plugin-snap
# - gnome-software (because we remove the recommended snap plugin)
snap remove firefox
snap remove gtk-common-themes
snap remove snap-store
snap remove snap-desktop-integration
snap remove gnome-3-38-2004
snap remove core20
snap remove bare
snap remove snapd
apt purge -y snapd
rm -rf ~/snap /snap /var/snap /var/lib/snapd

# remove apt software
apt purge -y ubuntu-desktop           # full ubuntu desktop metapackage
apt purge -y ubuntu-desktop-minimal   # minimal ubuntu desktop metapackage
apt purge -y update-notifier          # software updater
apt purge -y evince                   # documents viewer
apt purge -y yelp                     # help
apt purge -y gedit                    # text editor
apt purge -y totem                    # videos
apt purge -y libreoffice-gnome        # libreoffice gnome intergration
apt purge -y libreoffice-writer       # libreoffice writer
apt purge -y libreoffice-calc         # libreoffice spreadsheats
apt purge -y libreoffice-impress      # libreoffice presentation
apt purge -y libreoffice-math         # libreoffice equation editor
apt purge -y libreoffice-style-breeze # libreoffice breeze symbol style

# remove system services
apt purge -y whoopsie                       # error tracker submission
apt purge -y apport                         # report malfunction to developers
apt purge -y rygel                          # media sharing (upnp/dlna services)
apt purge -y gnome-online-accounts          # online account settings
apt purge -y xdg-desktop-portal             # flatpak/snapd desktop intergration
apt purge -y network-manager-openvpn        # network manager openvpn
apt purge -y network-manager-pptp           # network manager microsoft vpn
apt purge -y mobile-broadband-provider-info # ...
apt purge -y ppp                            # phone cable internet
apt purge -y cups                           # printer drivers and services
apt purge -y cups-pk-helper                 # printer drivers privileges manager
apt purge -y gnome-control-center-faces     # configure profile picture face picture
apt purge -y libcanberra-pulse              # pulseaudio backend for libcanberra (user login sound)
apt purge -y orca                           # screen reader
apt purge -y gnome-accessibility-themes     # high-constrast themes
apt purge -y plymouth                       # boot screen animation
apt purge -y ibus                           # multi-keyboard layout support
apt purge -y libpam-fprintd                 # fingerprint authentication

# reinstall important stuff
apt install -y --no-install-recommends linux-sound-base            # audio driver
apt install -y --no-install-recommends acpi-support                # acpi event support for certain devices
apt install -y --no-install-recommends gnome-session gdm3          # gnome 42 core
apt install -y --no-install-recommends gnome-shell-extension-prefs # gnome extensions system
apt install -y --no-install-recommends gnome-terminal              # terminal
apt install -y --no-install-recommends gnome-system-monitor        # system monitor
apt install -y --no-install-recommends gnome-bluetooth             # bluetooth
apt install -y --no-install-recommends gnome-software              # software
apt install -y --no-install-recommends nautilus                    # files
apt install -y --no-install-recommends ubuntu-settings             # settings

# reinstall yaru theme
apt install -y --no-install-recommends yaru-theme-gnome-shell                # system theme
apt install -y --no-install-recommends yaru-theme-gtk                        # window theme
apt install -y --no-install-recommends yaru-theme-sound yaru-theme-icon      # system/apps icons theme
apt install -y --no-install-recommends ubuntu-sounds                         # sound theme
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'                # restore cursor theme to yaru

# reinstall gnome extensions
apt install -y --no-install-recommends gnome-shell-extension-ubuntu-dock      # desktop taskbar
apt install -y --no-install-recommends gnome-shell-extension-appindicator     # desktop taskbar tray icons
apt install -y --no-install-recommends gnome-shell-extension-desktop-icons-ng # desktop icons

# remove remains
apt autoremove -y --purge
