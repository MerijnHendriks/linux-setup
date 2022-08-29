# linux-setup

My linux system install script and more

## Requirements

- Ubuntu Desktop 22.04

## Usage

1. Install Ubuntu Desktop
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
sudo chmod +x install-thumbnails.sh
sudo chmod +x install-clang.sh
sudo chmod +x install-dotnet6.sh
sudo chmod +x install-node18.sh
sudo chmod +x grub-hp.sh

# run scripts
sudo ./debloat-ubuntu.sh
sudo ./install-flatpaks.sh
sudo ./install-liquorix.sh
sudo ./install-thumbnails.sh
sudo ./install-clang.sh
sudo ./install-dotnet6.sh
sudo ./install-node18.sh

# set grub theme
sudo ./grub-hp.sh
sudo nano /etc/default/grub
# GRUB_CMDLINE_LINUX_DEFAULT="quiet nosplash"
# GRUB_CMDLINE_LINUX="console=tty12"
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

...

### Settings

#### Flatseal

**Location**                       | **Value**
---------------------------------- | ----------------------
Discord > Filesystem > Other files | Add `xdg-documents:ro`
WPS Office > Share > Network       | Off

#### WPS

**Location**                                | **Value**
------------------------------------------- | ---------
Settings > Skin Center                      | Comfort
Ribbon > Hamburger > Ribbon Button Centered | On
Ribbon > Hamburger > Ribbon Classic Menu    | Off

#### Discord

**Location**                                | **Value**
------------------------------------------- | ---------
Linux Settings > Open Discord               | Off
Linux Settings > Minimize to tray           | Off

#### Steam

**Location**                                 | **Value**
-------------------------------------------- | ---------
In-Game > Enable steam overlay while in-game | Off
In-Game > Steam Networking                   | Never
Interface > Steam window                     | Library
Interface > Notify me...                     | Never
Library > Interface                          | Small
Library > Low bandwidth mode                 | On
Library > Low performance mode               | On
Broadcasting > Privacy setting               | Disabled
Remote Play > Enable remote play             | Off
Shader Pre-Caching > Allow background...     | On
Steam Play > Enable steam play for other...  | On

#### Gnome Software

**Location**      | **Value**
----------------- | ---------------------
Automatic updates | Off

#### Software Properties

**Location**                                                  | **Value**
------------------------------------------------------------- | ---------------------
Ubuntu Software > Downloadable from the internet > Restricted | Off
Ubuntu Software > Downloadable from the internet > Multiverse | Off
Updates > Subscribed to                                       | Security updates only
Updates > Automatically check for updates                     | Never
Updates > When there are security updates                     | Display immediately
Updates > Notify me of a new ubuntu version                   | Never

#### Gnome Settings

**Location**                                                          | **Value**
--------------------------------------------------------------------- | ---------
Bluetooth                                                             | Off
Notifications > Lock Screen Notifications                             | Off
Search > Software                                                     | Off
Search > Terminal                                                     | Off
Privacy > File History & Trash > File History                         | Off
Privacy > File History & Trash > Automatically Delete Trash Content   | On
Privacy > File History & Trash > Automatically Delete Temporary Files | On
Privacy > Screen > Blank Screen Delay                                 | Never
Privacy > Screen > Automatic Screen Lock                              | Off
Power > Dim Screen                                                    | Off
Power > Automatic Suspend                                             | Off
Display > Resolution                                                  | 1280x720
Removable Media > Never prompt or start programs on media insertion   | On

#### Gnome settings keyboard shortcuts

**Location**                                  | **Value**
--------------------------------------------- | -----------------
System > Show the overview                    | Super + Tab
Screenshots > Take a screenshot interactively | Super + Shift + S

##### Custom shortcuts

```
name: Task manager
command: gnome-system-monitor
shortcut: Ctrl + Shift + Escape
```

#### Gnome tweaks

**Location**                                    | **Value**
----------------------------------------------- | -----------------------------------------------
Appearance > Background > Image                 | `/usr/share/backgrounds/canvas_by_roytanck.jpg`
Appearance > Lock Screen > Image                | `/usr/share/backgrounds/canvas_by_roytanck.jpg`
Keyboard And Mouse > Mouse > Middle Click Paste | Off
Top bar > Clock > Date                          | Off

#### Gnome system monitor

**Location**                                      | **Value**
------------------------------------------------- | -----------------------------------------------
Processes > Behaviour > Alert before ...          | Off
Processes > Information Fields > User             | Off
Processes > Information Fields > ID               | Off
Processes > Information Fields > Disk read total  | Off
Processes > Information Fields > Disk write total | Off
Processes > Information Fields > Disk read        | Off
Processes > Information Fields > Disk write       | Off
Resources > Graphs > Chart data points            | 30
Resources > Graphs > Draw CPU chart as ...        | On
File System > Information Fields > Available      | Off

#### Gnome Web

**Location**                                | **Value**
------------------------------------------- | ----------
General > Homepage                          | Blank Page
General > Session > Restore tabs on startup | Off
General > Language > Spell checking         | Off

#### Gnome extensions

**Name**                          | **Link**
----------------------------------| -----------------------------------------------------------------------
appindicator                      | [link](https://extensions.gnome.org/extension/615/appindicator-support)
blur my shell                     | [link](https://extensions.gnome.org/extension/3193/blur-my-shell/)
dash to panel                     | [link](https://extensions.gnome.org/extension/1160/dash-to-panel)
arcmenu                           | [link](https://extensions.gnome.org/extension/3628/arcmenu)
just perfection                   | [link](https://extensions.gnome.org/extension/3843/just-perfection)
refresh wifi connections          | [link](https://extensions.gnome.org/extension/905/refresh-wifi-connections)
start overlay in application view | [link](https://extensions.gnome.org/extension/5040/start-overlay-in-application-view)

Note:

ArcMenu requires the following:

```
sudo apt install --no-install-recommends gir1.2-gmenu-3.0
```

##### Just perfection

**Location**                         | **Value**
------------------------------------ | ---------
Behaviour > Startup status           | Desktop
Visibility > Events                  | Off
Visibility > System Menu             | Off
Visibility > Weather                 | Off
Customize > Animation                | Disabled

##### Dash to panel

**Location**                                     | **Value**
------------------------------------------------ | -----------------
Position > Thickness                             | 32px
Position > Show Applications Button              | Off
Position > Center box                            | Off
Position > Date Menu                             | Below system menu
Style > App icon margin                          | 2px
Style > App icon padding                         | 6px
Style > Override panel theme background opacity  | On
Behaviour > Click empty space to close overview  | On
Behaviour > Isolate monitors                     | On
Behaviour > Isolate workspaces                   | On
Behaviour > Show tooltip on hover                | Off
Fine-tune > Activate panel menu buttons on click | On

##### ArcMenu

**Location**                                          | **Value**
----------------------------------------------------- | -----------------------------
General > Display on all Panels                       | On
General > Menu Hotkey                                 | Left Super Key
Layout                                                | Modern Menu Layouts > Windows
Layout > Windows > Disable Frequent Apps              | On
Layout > Windows > Disable Pinned Apps                | On
Customize > Menu Settings > Height                    | 450
Customize > Button Settings > Icon                    | <Whatever>
Customize > Power Options > Lock                      | Off
Customize > Power Options > Log Out                   | Off
Customize > Power OPtions > Display Style             | Inline
Customize > Fine-Tune > Disable ScollView Fade Effect | On
Customize > Fine-Tune > Disable Tooltip               | On
Customize > Fine-Tune > Alphabetize All Programs      | Off
Customize > Fine-Tune > Disable New Apps Tracker      | On
