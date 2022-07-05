#!/bin/bash
sudo apt install --no-install-recommends apt-transport-https
wget -O mspkg.deb https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
dpkg -i mspkg.deb
rm mspkg.deb
apt-add-repository -y https://packages.microsoft.com/ubuntu/22.04/prod
apt update
apt install -y dotnet-sdk-6.0
