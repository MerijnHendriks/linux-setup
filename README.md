# linux-setup

My linux system install script and more

## Requirements

- Ubuntu Desktop 22.04

## Usage

1. Install Ubuntu Desktop (minimal)
2. Open terminal
3. Execute the following:

```sh
# install requirements
sudo apt install --no-install-recommends git

# download script
git clone https://github.com/merijnhendriks/linux-setup
cd linux-setup

# make scripts executables
sudo chmod +x debloat-ubuntu.sh
sudo chmod +x install-flatpaks.sh
sudo chmod +x install-liquorix.sh
sudo chmod +x install-clang.sh
sudo chmod +x install-dotnet6.sh
sudo chmod +x install-node18.sh
sudo chmod +x grub-hp.sh

# run scripts
sudo ./debloat-ubuntu.sh
sudo ./install-flatpaks.sh
sudo ./install-liquorix.sh
sudo ./install-clang.sh
sudo ./install-dotnet6.sh
sudo ./install-node18.sh

# set grub theme
sudo ./grub-hp.sh
sudo nano /etc/default/grub
# GRUB_CMDLINE_LINUX_DEFAULT="quiet nosplash"
# GRUB_CMDLINE_LINUX="tty12"
# GRUB_GFXMODE=1920x1080
# GRUB_THEME=/boot/grub/themes/hp/theme.txt
sudo update-grub

# cleanup
cd ..
rm -rf linux-setup

# restart os
reboot
```

## Wiki

### Tweaks

#### Disable gnome-software from startup

```sh
cp /etc/xdg/autostart/gnome-software-service.desktop ~/.config/autostart
nano ~/.config/autostart
```

```txt
X-GNOME-Autostart-enabled=false
```

### Customization

#### Gnome Settings

- Bluetooth: Off
- Notifications > Lock Screen Notifications: Off
- Search > Software: Off
- Search > Terminal: Off
- Privacy > File History & Trash > File History: Off
- Privacy > File History & Trash > Automatically Delete Trash Content: On
- Privacy > File History & Trash > Automatically Delete Temporary Files: On
- Privacy > Screen > Blank Screen Delay: Never
- Privacy > Screen > Automatic Screen Lock: Off
- Power > Dim Screen: Off
- Power > Automatic Suspend: Off
- Display > Resolution: 1280x720
- Removable Media > Never prompt or start programs on media insertion: On

#### Gnome tweaks

- Appearance > Background > Image > `/usr/share/backgrounds/canvas_by_roytanck.jpg`
- Appearance > Lock Screen > Image > `/usr/share/backgrounds/canvas_by_roytanck.jpg`
- Keyboard And Mouse > Mouse > Middle Click Paste > Off
- Top bar > Clock > Date > Off

#### Gnome extensions

**Name**                          | **Link**
----------------------------------| -----------------------------------------------------------------------
appindicator                      | [link](https://extensions.gnome.org/extension/615/appindicator-support)
dash to panel                     | [link](https://extensions.gnome.org/extension/1160/dash-to-panel)
just perfection                   | [link](https://extensions.gnome.org/extension/3843/just-perfection)
refresh wifi connections          | [link](https://extensions.gnome.org/extension/905/refresh-wifi-connections)
start overlay in application view | [link](https://extensions.gnome.org/extension/5040/start-overlay-in-application-view)

##### Just perfection

- Behaviour > Startup status: Desktop
- Visibility > Events: Off
- Visibility > Workspace switcher: Off
- Visibility > Workspaces app grid: Off
- Customize > Animation: Disabled

##### Dash to panel

- Position > Thickness: 32
- Position > Left box > Off
- Position > Center box > Off
- Position > Date Menu > Below system menu
- Style > App icon margin > 2
- Style > App icon padding > 6
- Style > Override panel theme background opacity: On
- Behaviour > Click empty space to close overview: On
- Behaviour > Double Super to App Grid: Off
- Behaviour > Isolate workspaces: On
- Behaviour > Show tooltip on hover: Off
- Fine-tune > Activate panel menu buttons on click only: On

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

#### Atom extensions

**Name**                | **Link**
----------------------- | -----------------------------------------------------------------------
file-icons              | [link](https://atom.io/packages/file-icons)
git-log                 | [link](https://atom.io/packages/git-log)
platformio-ide-terminal | [link](https://atom.io/packages/platformio-ide-terminal)]

#### Atom

- Edit > Stylesheets

```css
# disable github statusbar
.status-bar {
  .![wallpaper](https://user-images.githubusercontent.com/54717671/174400642-c00ac3d4-32b3-421b-ab26-7d34994465b9.jpg)
cursor-path, .github-StatusBarTile {
    display: none;
  }
}
```

- Edit > Config

```cson
"*":
  core:
    disabledPackages: [
      "archive-view"
      "autocomplete-atom-api"
      "autocomplete-css"
      "autocomplete-html"
      "autocomplete-plus"
      "autocomplete-snippets"
      "background-tips"
      "bracket-matcher"
      "deprecation-cop"
      "exception-reporting"
      "fuzzy-finder"
      "go-to-line"
      "language-clojure"
      "language-coffee-script"
      "language-go"
      "language-java"
      "language-less"
      "language-mustache"
      "language-objective-c"
      "language-perl"
      "language-php"
      "language-property-list"
      "language-python"
      "language-ruby"
      "language-ruby-on-rails"
      "language-rust-bundled"
      "language-sass"
      "language-shellscript"
      "language-sql"
      "language-todo"
      "language-toml"
      "language-typescript"
      "language-yaml"
      "metrics"
      "open-on-github"
      "package-generator"
      "snippets"
      "spell-check"
      "styleguide"
      "symbols-view"
      "timecop"
      "welcome"
      "about"
    ]
    telemetryConsent: "no"
  welcome:
    showOnStartup: false
```
