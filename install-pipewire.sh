#!/bin/bash

# install bluetooth codecs
sudo apt install libfdk-aac2 libldacbt-{abr,enc}2 libopenaptx0

# install pipewire
apt install -y libspa-0.2-bluetooth pipewire-audio-client-libraries pipewire-media-session- wireplumber
apt remove pulseaudio-module-bluetooth
systemctl --user --now enable wireplumber.service

# replace alsa and jack with pipewire
cp /usr/share/doc/pipewire/examples/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d/
cp /usr/share/doc/pipewire/examples/ld.so.conf.d/pipewire-jack-*.conf /etc/ld.so.conf.d/
