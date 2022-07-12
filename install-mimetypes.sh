#!/bin/bash
apt install --no-install-recommends imagemagick
mkdir -p ~/.local/share/thumbnailers
echo -e "[Thumbnailer Entry]\nExec=/usr/bin/convert %i[0] -thumbnail %sx%s png:%o\nMimeType=image/x-dds;" >> ~/.local/share/thumbnailers/dds.thumbnailer
echo -e "[Thumbnailer Entry]\nExec=/usr/bin/convert %i[0] -thumbnail %sx%s png:%o\nMimeType=image/webp;" >> ~/.local/share/thumbnailers/webp.thumbnailer
nautilus -q
rm -r ~/.cache/thumbnails/fail
rm -r ~/.cache/thumbnails/*
