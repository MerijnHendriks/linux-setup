# linux-setup

My linux system install script and more

## Scrips usage

```sh
# install requirements
sudo apt install git

# download script
git clone https://github.com/merijnhendriks/linux-setup
cd linux-setup

# cleanup 20.04 mini iso migration
chmox +x migration.sh
sudo ./migration.sh

# install software
chmox +x install.sh
sudo ./install.sh

# cleanup
cd ..
rm linux setup

# reboot to get into shell
sudo reboot
```

## Wiki

### Upgrade image from 20.04 mini.iso

Mini iso: [link](https://mirrors.edge.kernel.org/ubuntu/dists/focal/main/installer-amd64/current/legacy-images/netboot)

1. install base system
2. enter new install (press `ctrl+alt+f2`)
3. upgrade system

```
sudo do-release-upgrade -d
```

### Customization

#### Boot show startup logs

```sh
sudo nano /etc/default/grub
# remove "quiet" option from cmd
# press ctrl-s
# press ctrl-x
sudo grub-update
```

#### Gnome extensions

**Name**          | **Link**
----------------- | -----------------------------------------------------------------------
appindicator      | [link](https://extensions.gnome.org/extension/615/appindicator-support)
blur my shell     | [link](https://extensions.gnome.org/extension/3193/blur-my-shell)
dash to panel     | [link](https://extensions.gnome.org/extension/1160/dash-to-panel)
impatience        | [link](https://extensions.gnome.org/extension/277/impatience)
just perfection   | [link](https://extensions.gnome.org/extension/3843/just-perfection)
user themes       | [link](https://extensions.gnome.org/extension/19/user-themes)
