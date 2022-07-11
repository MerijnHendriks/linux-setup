#!/bin/bash

apt install -y --no-install-recommends gnome-shell-extension-manager
apt install -y --no-install-recommends file-roller
apt install -y --no-install-recommends epiphany-browser
apt install -y --no-install-recommends gnome-text-editor
apt install -y --no-install-recommends eog
apt install -y --no-install-recommends celluloid
apt install -y --no-install-recommends gnome-builder

# discord
apt install --no-install-recommends libgconf-2-4 libc++1
wget -O discord.deb https://discord.com/api/download?platform=linux&format=deb
dpkg -i discord.deb
rm discord.deb

# steam
apt install --no-install-recommends curl libgl1-mesa-dri
wget -O steam.deb https://cdn.akamai.steamstatic.com/client/installer/steam.deb
dpkg -i steam.deb
rm steam.deb
