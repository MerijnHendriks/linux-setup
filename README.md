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
sudo rm -rf linux-setup

# restart into shell
reboot
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

##### Dash to panel

- position > thickness: 32
- position > left box > Off
- position > middle box > Off
- style > app icon margin > 2
- style > app icon padding > 6

##### Just perfection

- workspaces app grid: off

#### Gnome shell

- Panel > Help > Unpin

#### Gnome settings

- Appearance > Dark
- Multitask > General > Hot Corners > Off
- Mouse > Touchpad > Tap To Click > On
- Keyboard > Shortcuts > Edit shortcuts
  - System > Show the Overview > `super+tab`
  - Navigtion > Switch Windows > `alt+tab`
  - Screenshots > Take a screenshot interactively > `shift+super+s`
  - Custom Shortcut > Add new
    ```
    Name: Launch task manager
    Command: gnome-system-monitor
    Shortcut: `ctrl+shift+esc`
    ```
- Users > Avatar > `$HOME/Pictures/Wallpapers/avatar.png`
- Users > Automatic login > On

#### Gnome tweaks

- Appearance > Cursor > Yaru
- Appearance > Icons > Fluent-dark
- Appearance > Shell > Fluent-round-dark
- Appearance > Sound > Windows_10_sounds
- Appearance > Background > Image > `$HOME/Pictures/Wallpapers/wallpaper.png`
- Appearance > Lock Screen > Image > `$HOME/Pictures/Wallpapers/wallpaper.png`
- Fonts > Interface Text > Inter Regular 11
- Fonts > Document Text > Inter Regular 11
- Fonts > Legacy Window Titles > Inter Regular 11
- Fonts > Antialiasing > Subpixel
- Keyboard And Mouse > Mouse > Middle Click Paste > Off
- Keyboard And Mouse > Touchpad > Mouse Click Emulation > Area
- Top bar > Clock > Date > Off
- Window Titlebars > Maximize > On
- Window Titlebars > Minimize > On

#### Gnome web

- General > Homepage > Blank page
- General > Search engine > Add search engine...

```
Name: Searx
Address: https://searx.be/search?q=%s
```

- General > Check spelling > Off

#### WPS

- Settings > Skin Center > Comfort
- Ribbon > Hamburger > Ribbon Button Centered > On
- Ribbon > Hamburger > Ribbon Classic Menu > Off

### Atom extensions

**Name**                | **Link**
----------------------- | -----------------------------------------------------------------------
atom-icons              | [link](https://atom.io/packages/atom-icons)
atom-mermaid            | [link](https://atom.io/packages/atom-mermaid)
git-log                 | [link](https://atom.io/packages/git-log)
platformio-ide-terminal | [link](https://atom.io/packages/platformio-ide-terminal)]
