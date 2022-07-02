#!/bin/bash

# Core system

## base desktop
apt install -y ubuntu-drivers-common cups alsa-base flatpak fwupd
app install --no-install-recommends gnome-session gdm3 gnome-keyring software-properties-common xdg-utils network-manager-gnome gkbd-capplet gnome-menus power-profiles-daemon unzip pulseaudio-module-bluetooth
app install --no-install-recommends  gnome-control-center gnome-shell-extensions nautilus gnome-terminal nautilus-extension-gnome-terminal gnome-disk-utility gnome-system-monitor gnome-tweaks gnome-software 
apt purge gedit yelp
apt autoremove --purge

## core drivers
ubuntu-drivers install

## hp printer driver
apt install -y hplip

## flatpak and flathub
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub org.gnome.eog
flatpak install -y flathub org.gnome.Epiphany
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flatpak com.github.maoschanz.drawing
flatpak install -y flathub com.mattjakeman.ExtensionManager
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.wps.Office
flatpak install -y flathub com.valvesoftware.Steam
flatpak install -y flathub io.atom.Atom

## clang
apt install -y clang clangd clang-tidy clang-format lld llvm cmake ninja-build

## dotnet 6.0
sudo apt install --no-install-recommends apt-transport-https
wget -O mspkg.deb https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
dpkg -i mspkg.deb
rm mspkg.deb
apt-add-repository -y https://packages.microsoft.com/ubuntu/22.04/prod
apt update
apt install -y dotnet-sdk-6.0

## nodejs
apt install -y nodejs npm

# Customization

## dependencies
apt install -y libsass1

## fonts
apt install -y fonts-inter

## cursors
apt install -y yaru-theme-icon

## icon theme (fluent)
git clone https://github.com/vinceliuice/fluent-icon-theme
cd fluent-icon-theme
./install.sh --round
cd ..
rm -rf fluent-icon-theme

## windows 10 sounds
mkdir -p ../.local/share/sounds
tar -xf msaudio.tar.xz -C ../.local/share/sounds

## personalization
mkdir -p ../Pictures/Avatar
cp avatar.png ../Pictures/Avatars
mkdir -P ../Pictures/Wallpapers
cp wallpaper.jpg ../Pictures/Wallpapers
