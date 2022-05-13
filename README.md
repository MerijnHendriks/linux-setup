# linux-setup

My linux system install script

## Script usage

```sh
sudo apt install git
git clone https://github.com/merijnhendriks/linux-setup
cd linux-setup
chmox +x install.sh
sudo ./install.sh
```

## Upgrade image from 20.04 mini.iso

```
sudo do-release-upgrade -d
sudo apt purge gcc-10-base libffi7 libfuse2 ltrace popularity-contest tasksel laptop-detect
```
