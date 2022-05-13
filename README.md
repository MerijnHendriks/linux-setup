# linux-setup

My linux system install script

## Script usage

```sh
# install requirements
sudo apt install git

# download script
git clone https://github.com/merijnhendriks/linux-setup

# run it
cd linux-setup
chmox +x install.sh
sudo ./install.sh
cd ..

# cleanup
rm linux setup
```

## Upgrade image from 20.04 mini.iso

```
sudo do-release-upgrade -d
sudo apt purge gcc-10-base libffi7 libfuse2 ltrace popularity-contest tasksel laptop-detect
```
