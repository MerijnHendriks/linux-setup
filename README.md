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

Mini iso: [link](https://mirrors.edge.kernel.org/ubuntu/dists/focal/main/installer-amd64/current/legacy-images/netboot)

```
sudo do-release-upgrade -d
sudo apt purge gcc-10-base libffi7 libfuse2 ltrace popularity-contest tasksel laptop-detect
```

## Customization

### Boot show startup logs

```sh
sudo nano /etc/default/grub
# remove "quiet" option from cmd
# press ctrl-s
# press ctrl-x
sudo grub-update
```

### Gnome extentions

**Name**          | **Link**
----------------- | -----------------------------------------------------------------------
appindicator      | [link](https://extensions.gnome.org/extension/615/appindicator-support)
blur my shell     | [link](https://extensions.gnome.org/extension/3193/blur-my-shell)
dash to panel     | [link](https://extensions.gnome.org/extension/1160/dash-to-panel)
impatience        | [link](https://extensions.gnome.org/extension/277/impatience)
just perfection   | [link](https://extensions.gnome.org/extension/3843/just-perfection)
user themes       | [link](https://extensions.gnome.org/extension/19/user-themes)
