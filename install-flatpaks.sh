#!/bin/bash
 apt install --no-install-recommends gnome-software-plugin-flatpak xdg-desktop-portal-gtk xdg-desktop-portal-gnome
 flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
 flatpak install -y flathub com.github.tchx84.Flatseal
 flatpak install -y flathub com.mattjakeman.ExtensionManager
 flatpak install -y flathub org.gnome.FileRoller
 flatpak install -y flathub org.gnome.Epiphany
 flatpak install -y flathub org.gnome.TextEditor
 flatpak install -y flathub org.gnome.eog
 flatpak install -y flathub io.github.celluloid_player.Celluloid
 flatpak install -y flathub org.gnome.Builder
 flatpak install -y flathub com.discordapp.Discord
 flatpak install -y flathub com.wps.Office
 flatpak install -y flathub com.valvesoftware.Steam
 flatpak install -y flathub com.github.Matoking.protontricks
