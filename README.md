# linux-setup

My linux system install script and more

@ Requirements

- Ubuntu Desktop 22.04

## Scrips usage

```sh
# install requirements
sudo apt install git

# download script
git clone https://github.com/merijnhendriks/linux-setup
cd linux-setup

# make scripts executables
chmod +x debloat-ubuntu.sh
chmod +x install-flatpaks.sh
chmod +x install-clang.sh
chmod +x install-dotnet6.sh
chmod +x install-node18.sh

# run scripts
sudo ./debloat-ubuntu.sh
sudo ./install-flatpaks.sh
sudo ./install-clang.sh
sudo ./install-dotnet6.sh
sudo ./nstall-node18.sh

# cleanup
cd ..
rm -rf linux-setup

# restart os
reboot
```

## Wiki

### Customization

#### Boot show startup logs

```sh
sudo nano /etc/default/grub
# remove "quiet" option from cmd
# press ctrl-s
# press ctrl-x
sudo update-grub
```

#### Gnome extensions

**Name**                          | **Link**
----------------------------------| -----------------------------------------------------------------------
appindicator                      | [link](https://extensions.gnome.org/extension/615/appindicator-support)
blur my shell                     | [link](https://extensions.gnome.org/extension/3193/blur-my-shell)
dash to panel                     | [link](https://extensions.gnome.org/extension/1160/dash-to-panel)
desktop icons: neo                | [link]()
just perfection                   | [link](https://extensions.gnome.org/extension/3843/just-perfection)
refresh wifi connections          | [link]()
user themes                       | [link](https://extensions.gnome.org/extension/19/user-themes)
start overlay in application view | [link]()

##### Dash to panel

- position > thickness: 32
- position > left box > Off
- position > middle box > Off
- style > app icon margin > 2
- style > app icon padding > 6
- style > override panel theme background opacity: On
- behaviour > show tooltip on hover: Off
- behaviour > isolate workspaces: On
- behaviour > click empty space to close overview: On
- behaviour > disable show overview on startup: On
- fine-tune > activate panel menu buttons on click only: On

##### Just perfection

- workspace switcher: Off
- workspaces app grid: Off
- animation: Disabled

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
- Appearance > Sound > Windows_10_sounds
- Appearance > Background > Image > `$HOME/Pictures/Wallpapers/wallpaper.jpg`
- Appearance > Lock Screen > Image > `$HOME/Pictures/Wallpapers/wallpaper.jpg`
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
