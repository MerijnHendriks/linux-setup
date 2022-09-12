#!/bin/bash

# ----- NOTES -----
# Couple of assumptions in this script;
# - Ubuntu mirror is https://nl.archive.ubuntu.com
# - You only need outgoing DNS + HTTPS
# - Don't want the vanilla ubuntu experience

# ---- HARDENING -----

# use apt over https
sed --in-place --regexp-extended 's http://(nl\.archive\.ubuntu\.com|security\.ubuntu\.com) https://nl.archive.ubuntu.com g' /etc/apt/sources.list

# ----- DEBLOAT -----

# remove snap, also implictly removes:
# - firefox (snap package)
# - gnome-software (because gnome-software-plugin-snap is removed)
snap remove firefox
snap remove gtk-common-themes
snap remove snap-store
snap remove snap-desktop-integration
snap remove gnome-3-38-2004
snap remove core20
snap remove bare
snap remove snapd
apt purge -y snapd
rm -rf /snap
rm -rf /var/snap
rm -rf /var/lib/snapd
rm -rf snap

# remove apt packages
apt purge -y ubuntu-desktop                                                      # full ubuntu desktop metapackage
apt purge -y ubuntu-desktop-minimal                                              # minimal ubuntu desktop metapackage
apt purge -y ubuntu-standard                                                     # standard ubuntu system metapackage
apt purge -y ubuntu-advantage-tools                                              # ubuntu advantage service
apt purge -y vim-common                                                          # vim
apt purge -y update-notifier                                                     # software updater
apt purge -y evince                                                              # documents viewer
apt purge -y yelp                                                                # help
apt purge -y gedit                                                               # text editor
apt purge -y totem                                                               # videos
apt purge -y eog                                                                 # image viewer
apt purge -y thunderbird                                                         # email
apt purge -y libreoffice-common                                                  # libreoffice
apt purge -y libreoffice-style-colibre                                           # libreoffice colibre symbol style
apt purge -y gnome-startup-applications                                          # startup application manager
apt purge -y network-manager-gnome                                               # advanced network configuration
apt purge -y whoopsie                                                            # error tracker submission
apt purge -y apport                                                              # report malfunction to developers
apt purge -y rygel                                                               # media sharing (upnp/dlna services)
apt purge -y gnome-online-accounts                                               # online account settings
apt purge -y xdg-desktop-portal                                                  # flatpak/snapd desktop intergration
apt purge -y network-manager-openvpn                                             # network manager openvpn
apt purge -y network-manager-pptp                                                # network manager microsoft vpn
apt purge -y mobile-broadband-provider-info                                      # ...
apt purge -y ppp                                                                 # phone cable internet
apt purge -y cups-common                                                         # printer drivers and services
apt purge -y cups-pk-helper                                                      # printer drivers privileges manager
apt purge -y gnome-control-center-faces                                          # configure profile picture face picture
apt purge -y libcanberra-pulse                                                   # pulseaudio backend for libcanberra (user login sound)
apt purge -y orca                                                                # screen reader
apt purge -y gnome-accessibility-themes                                          # high-constrast themes
apt purge -y gnome-remote-desktop                                                # remote desktop daemon
apt purge -y plymouth                                                            # boot screen animation
apt purge -y ibus                                                                # multi-keyboard layout support
apt purge -y ubuntu-release-upgrader-core                                        # release upgrader
apt purge -y nautilus-sendto                                                     # nautilus send to context menu option
apt purge -y nautilus-extension-gnome-terminal                                   # nautillus open terminal here context menu option
apt purge -y pulseaudio                                                          # audio
apt purge -y ntfs-3g                                                             # ntfs drive support
apt purge -y sane-airscan sane-utils                                             # document scanner
apt purge -y switcheroo-control                                                  # dual-gpu control
apt purge -y openssh-client                                                      # openssh
apt purge -y fonts-indic                                                         # font indic
apt purge -y fonts-liberation fonts-liberation2                                  # font liberation
apt purge -y fonts-noto-mono                                                     # font noto mono
apt purge -y fonts-droid-fallback                                                # font droid
apt purge -y fonts-urw-base35                                                    # font postscript
apt purge -y fonts-freefont-ttf                                                  # font freefont

# refresh package list
apt update

# reinstall apt packages
apt install -y --no-install-recommends linux-sound-base                          # audio driver
apt install -y --no-install-recommends gnome-session gdm3                        # gnome 42 core
apt install -y --no-install-recommends gnome-shell-extension-prefs               # gnome extensions system
apt install -y --no-install-recommends gnome-system-monitor                      # system monitor
apt install -y --no-install-recommends gnome-bluetooth                           # bluetooth
apt install -y --no-install-recommends nautilus                                  # files
apt install -y --no-install-recommends ubuntu-settings                           # settings
apt install -y --no-install-recommends ufw                                       # firewall
apt install -y --no-install-recommends yaru-theme-gnome-shell                    # theme system
apt install -y --no-install-recommends yaru-theme-gtk                            # theme window
apt install -y --no-install-recommends yaru-theme-sound yaru-theme-icon          # theme system/apps icons
apt install -y --no-install-recommends ubuntu-sounds                             # theme sound
apt install -y --no-install-recommends fonts-ubuntu fonts-ubuntu-console         # theme system fonts

# reinstall settings
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'                    # theme restore cursor to yaru

# remove unused icons
rm /usr/share/applications/gnome-language-selector.desktop                       # language support icon

# remove all leftover files
apt autoremove -y --purge
apt dist-upgrade -y

# ----- CONFIGURE -----

# stop services
systemctl stop systemd-resolved
systemctl disable systemd-resolved

# enable firewall
ufw default deny incoming                                                        # disable all incoming ports
ufw default deny outgoing                                                        # allow all outgoing ports
ufw allow out to any port 53                                                     # allow outgoing dns
ufw allow out to any port 443                                                    # allow outgoing https
ufw enable                                                                       # turn on the firewall
ufw reload                                                                       # reload all rules

# ----- INSTALL -----

# bluetooth codecs
apt install -y --no-install-recommends libldacbt-{abr,enc}2

# pipewire
apt install -y --no-install-recommends libspa-0.2-bluetooth pipewire-audio-client-libraries pipewire-media-session- wireplumber
cp /usr/share/doc/pipewire/examples/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d/
cp /usr/share/doc/pipewire/examples/ld.so.conf.d/pipewire-jack-*.conf /etc/ld.so.conf.d/
systemctl --user --now enable wireplumber.service

# flatpak
apt install -y --no-install-recommends flatpak xdg-desktop-portal-gtk xdg-desktop-portal-gnome
 
# flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update --appstream

# flatpak applications
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.mattjakeman.ExtensionManager
flatpak install -y flathub com.raggesilver.BlackBox
flatpak install -y flathub org.gnome.FileRoller
flatpak install -y flathub org.gnome.Epiphany
flatpak install -y flathub org.gnome.TextEditor
flatpak install -y flathub org.gnome.eog
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flathub com.wps.Office
flatpak install -y flathub com.valvesoftware.Steam
flatpak install -y flathub com.github.Matoking.protontricks
