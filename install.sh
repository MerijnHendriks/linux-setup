#!/bin/bash

# Core system

## base desktop
apt install -y gnome-shell gnome-terminal gnome-tweaks gnome-system-monitor gnome-disk-utility gnome-shell-extensions nautilus ubuntu-drivers-common cups linux-sound-base alsa-base alsa-utils flatpak apt-transport-https software-properties-common curl
apt purge gedit
apt autoremove --purge

## core drivers
ubuntu-drivers install

## hp printer driver
apt install -y hplip

## flatpak and flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.gnome.eog
# flatpak install -y flathub org.gnome.Epiphany
flatpak install -y flathub org.gnome.Evince
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flatpak com.github.maoschanz.drawing
flatpak install -y flathub com.mattjakeman.ExtensionManager
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.wps.Office

## atom ide
wget -O atom.deb https://atom.io/download/deb
apt install -y xdg-utils
dpkg -i atom.deb
rm atom.deb
apm install platformio-ide-terminal git-log file-icons nord-atom-ui

## clang
apt install -y clang clangd clang-tidy clang-format lld llvm cmake ninja-build

## dotnet 6.0
wget -O mspkg.deb https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
dpkg -i mspkg.deb
rm mspkg.deb
apt-add-repository -y https://packages.microsoft.com/ubuntu/22.04/prod
apt update
apt install -y dotnet-sdk-6.0

## nodejs
apt install -y nodejs npm

## steam games
wget -O steam.deb https://cdn.akamai.steamstatic.com/client/installer/steam.deb
dpkg -i steam.deb
rm steam.deb

# Customization

## dependencies
apt install -y libsass1

## fonts
apt install -y fonts-inter

## cursors
apt install -y yaru-theme-icon

## gtk theme (fluent)
git clone https://github.com/vinceliuice/fluent-gtk-theme
cd fluent-gtk-theme
./install.sh --color dark --tweaks round --tweaks noborder --tweaks square
cd ..
rm -rf fluent-gtk-theme

## icon theme (fluent)
git clone https://github.com/vinceliuice/fluent-icon-theme
cd fluent-icon-theme
./install.sh --round
cd ..
rm -rf fluent-icon-theme

## windows 10 sounds
mkdir -p ../.local/share/sounds
tar -xf msaudio.tar.xz -C ../.local/share/sounds

## gedit nord theme
cp nord.xml /usr/share/gtksourceview-4/styles

## personalization
mkdir -p ../Pictures/Avatar
cp avatar.png ../Pictures/Avatars
mkdir -P ../Pictures/Wallpapers
cp wallpaper.png ../Pictures/Wallpapers
