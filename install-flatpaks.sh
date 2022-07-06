#!/bin/bash
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub org.gnome.eog
flatpak install -y flathub org.gnome.Epiphany
flatpak install -y flathub org.gnome.Builder
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flathub com.mattjakeman.ExtensionManager
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.wps.Office
flatpak install -y flathub com.valvesoftware.Steam
