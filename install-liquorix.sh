#!/bin/bash
sudo add-apt-repository -y ppa:damentz/liquorix
sudo apt-get update
sudo apt-get install -y --no-install-recommends linux-image-liquorix-amd64 linux-headers-liquorix-amd64
