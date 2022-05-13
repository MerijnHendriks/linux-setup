#!/bin/bash

## Core system

# base desktop
apt install gnome-shell gnome-terminal gnome-tweaks gnome-system-monitor gnome-disk-utility gnome-shell-extensions nautilus ubuntu-drivers-common cups linux-sound-base alsa-base alsa-utils flatpak apt-transport-https software-properties-common curl
apt purge gedit
apt autoremove --purge

# install core drivers
ubuntu-drivers install

# install hp printer driver
apt install hplip

# flatpak and flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.eog
flatpak install flathub org.gnome.Epiphany
flatpak install flathub org.gnome.Evince
flatpak install flathub io.github.celluloid_player.Celluloid
flatpak install flathub com.github.PintaProject.Pinta
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.wps.Office

# clang
apt install clang clangd clang-tidy clang-format lld llvm cmake ninja-build

# dotnet 6.0
wget -O mspkg.deb https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
dpkg -i mspkg.deb
rm mspkg.deb
apt-add-repository https://packages.microsoft.com/ubuntu/22.04/prod
apt update
apt install dotnet-sdk-6.0

# atom ide
wget -O atom.deb https://atom.io/download/deb
apt install xdg-utils
dpkg -i atom.deb
rm atom.deb
apm install platformio-ide-terminal

# steam games
wget -O steam.deb https://cdn.akamai.steamstatic.com/client/installer/steam.deb
dpkg -i steam.deb
rm steam.deb

## Customization

# fonts
apt install fonts-inter

# mcmojave cursors
git clone https://github.com/vinceliuice/mcmojave-cursors
cd mcmojave-cursors
./install.sh
cd ..
rm -rf mcmojave-cursors

# fluent gtk theme
git clone https://github.com/vinceliuice/fluent-gtk-theme
cd fluent-gtk-theme
./install.sh --color dark --tweaks round --tweaks noborder --tweaks square
cd ..
rm -rf fluent-gtk-theme

# fluent icon theme
git clone https://github.com/vinceliuice/fluent-icon-theme
cd fluent-icon-theme
./install.sh --round
cd ..
rm -rf fluent-icon-theme

# windows 10 sounds
wget -O msaudio.tar.xz https://github.com/biohazard1282/windows-sound-themes/releases/download/10/windows_10_sounds.tar.xz
mkdir -p .local/share/sounds
tar -xf msaudio.tar.xz -C .local/share/sounds
rm msaudio.tar.xz

# flatpak theming
flatpak override --filesystem=/usr/share/themes --env=GTK_THEME=Fluent-round-dark
