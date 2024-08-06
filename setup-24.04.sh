# Get admin rights
sudo -i

# Refresh apt remote indexes
apt update

# APT over HTTPS (note: change remote to yours)
apt install --no-install-recommends apt-transport-https
sed -i 's|http://nl.archive.ubuntu.com|https://nl.archive.ubuntu.com|' /etc/apt/sources.list.d/*.list
apt update

# DNS-over-HTTPS
apt install --no-install-recommends dnss
systemctl disable systemd-resolved
systemctl stop systemd-resolved
nano /etc/NetworkManager/NetworkManager.conf
# add the following:
# [main]
# dns=default
rm /etc/resolv.conf
dnss -enable_dns_to_https -https_upstream="https://dns.quad9.net/dns-query"
reboot

# Replace console
apt install--no-install-recommends gnome-console
apt purge gnome-terminal

# Remove snapd
snap remove firmware-updater
snap remove firefox
snap remove gtk-common-themes
snap remove gnome-42-2204
snap remove snap-store
snap remove snapd-desktop-integration
snap remove core22
snap remove bare
snap remove snapd
apt purge snapd
rm -rf /home/user/snap

# Remove preinstalled apps and features
apt purge evince                     # document viewer
apt purge gnome-bluetooth-sendto     # send files over bluetooth
apt purge gnome-calculator           # calculator
apt purge gnome-characters           # characters
apt purge gnome-clocks               # clocks
apt purge gnome-control-center-faces # ?
apt purge gnome-font-viewer          # fonts
apt purge gnome-initial-setup        # OOBE
apt purge gnome-keyring              # passwords and keys
apt purge gnome-power-manager        # power statistics
apt purge gnome-startup-applications # startup applications
apt purge gnome-text-editor          # text editor
apt purge gnome-logs                 # logs
apt purge eog                        # image viewer
apt purge baobab                     # disk analyzer
apt purge gnome-system-monitor       # system monitor

# Install gnome software
apt install --no-install-recommends gnome-software gnome-software-plugin-flatpak

# Configure flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak update --appstream

# Install flatpak apps
flatpak install org.gnome.TextEditor                   # text editor
flatpak install org.gnome.Loupe                        # image viewer
flatpak install io.github.celluloid_player.Celluloid   # video/music player
flatpak install org.gnome.Logs                         # logs
flatpak install com.github.tchx84.Flatseal             # flatpak permission manager
flatpak install com.mattjakeman.ExtensionManager       # gnome extensions manager
flatpak install org.mozilla.firefox                    # web browser
flatpak install io.missioncenter.MissionCenter         # system monitor
flatpak install org.gnome.FileRoller                   # compressed file extractor

# Install personal apps
apt install --no-install-recommends git steam-devices dotnet-sdk-8.0
flatpak install com.valvesoftware.Steam
flatpak install com.github.Matoking.protontricks
flatpak install org.gnome.World.Secrets
flatpak install com.usebottles.bottles
flatpak install dev.zed.Zed

# Configure control center
# 1. Network
#    - For each network adaptor, ipv4 dns 9.9.9.9, 149.112.112.112
#                                ipv6 dns 2620:fe::fe, 2620:fe::9
# 2. Display
#    - Power saving
#      - screen blank > never
#    - General
#      - show battery percentage: enable
# 3. Multitasking
#    - General
#      - active screen edges > enable
# 4. Appearance
#    - Style
#      - dark
#    - Background
#      - Mt. Fuji
# 5. Ubuntu desktop
#    - Desktop icons
#      - show home folder > disable
#    - Dock
#      - position on screen > bottom
# 6. Search
#    - Disable all search locations, keep settings search
# 7. Keyboard
#    - Keyboard shortcuts
#      - customize shortcuts
#        - custom: "Open system monitor", "flatpak run  io.missioncenter.MissionCenter", "ctrl+shift+esc"
#        - show the overview: "super+tab"
#        - take a screenshot interactively: "super+shift+s"
#        - take a screenshot: "prt scr"
# 8. Privacy and security
#    - File history and trash
#      - file history > disable
#      - file history duration > 1 day
#      - clear history... > click
#    - Trash and temporary files
#      - automatically delete trash content > enable
#      - automatically delete temporary files > enable
#      - automatically delete period > 1 hour
# 9. System
#    - Region and languages
#      - Manages installed languages
#        - finish installation when prompted
#        - add dutch language
#        - set dutch regional format
#    - Date and time
#      - Clock and calendar
#        - date: disable

# Configure gnome extensions
# - Start Overlay in Application View
# - Dash to Panel
#   - Position
#     - panel thickness (px) > 32
#     - move date menu 1 down
#   - Style
#     - app icon margin > 2
#     - app icon padding > 6
#     - running indicator style
#       - indicator size (px) > 1
#     - override panel theme background opacity > enable
#   - Behavior
#     - click empty space to close overview > enable
# - Just Perfection
#   - Visibility
#     - workspaces app grid > disable
# - Desktop Icons NG (DING)
#   - show the trash icon in the desktop > enable
# - GameMode Shell Extension
#   - gamemode disabled notification > enable
#   - show icon only when active > enable

# Configure firefox
# 1. Hambuger menu > settings
#    - Privacy & security
#      - firefox data collection and use > disable all
#      - website advertising preferences > disable all
#      - security > disable all
#      - https-only mode > enable in all windows
#      - dns over https > max protection, custom, 'https://dns.quad9.net/dns-query'
#      - permissions > remove all, block all
#      - passwords > disable all
#      - website privacy > enable all
#      - enhanced tracking protection > custom, all cross-site cookies, all windows
#    - Search
#      - search suggestions > disable all
#      - default search engine > duckduckgo
#      - address bar > disable all
#      - search shortcut > disable and remove all
#    - Home
#      - firefox home content > disable and remove all
#      - new home and tabs > blank page
#    - General
#      - browsing > disable PIP, recommendations
#      - performance > disable recommendation
#      - DRM > enable DRM
#      - Language > disable spellchecking
#      - Fonts > default font: carlito
# 2. Hamburger menu > bookmarks > manage bookmarks
#    - bookmarks toolbar > remove all
#    - bookmarks menu > remove all
# 3. Right-click bookmark toolbar > never show
# 4. Right-click overflow menu > remove from toolbar
# 5. Hamburger menu > more tools > customize toolbar
#    - remove blank spaces
#    - remove account switcher
#    - remove pocket
# 6. Extensions
#    - search and install ublock origin, allow in private mode
#    - search and install decentraleyes simpler, allow in private mode
#    - search and install clearurls, allow in private mode
# 7. Right-click ublock origin > disable "pin to toolbar"

# Configure celluloid
# 1. Hamburger menu > Preferences
#    - Use floating controls in windowed mode > enable
#    - Use a floating header bar in windowed mode > enable
