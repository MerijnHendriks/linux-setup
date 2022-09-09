#!/bin/bash

# apt
apt install -y --no-install-recommends gnome-tweaks
apt purge -y gnome-terminal

# flatpak
apt install -y --no-install-recommends gnome-software-plugin-flatpak xdg-desktop-portal-gtk xdg-desktop-portal-gnome
 
# flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak update --appstream
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.mattjakeman.ExtensionManager
flatpak install -y flathub com.raggesilver.BlackBox
flatpak install -y flathub org.gnome.FileRoller
flatpak install -y flathub org.gnome.Epiphany
flatpak install -y flathub org.gnome.TextEditor
flatpak install -y flathub org.gnome.eog
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.wps.Office
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub com.valvesoftware.Steam
flatpak install -y flathub com.github.Matoking.protontricks
