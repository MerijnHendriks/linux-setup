# remove snap
sudo snap remove firefox
sudo snap remove gtk-common-themes
sudo snap remove snap-store
sudo snap remove snap-desktop-integration
sudo snap remove gnome-3-38-2004
sudo snap remove core20
sudo snap remove bare
sudo snap remove snapd
sudo apt purge snapd
sudo rm -rf ~/snap /snap /var/snap /var/lib/snapd

# remove apt software
sudo apr purge evince gedit eog gnome-disk-utility gnome-power-manager gnome-calculator gnome-characters gnome-font-viewer gnome-logs file-roller seahorse yelp ubuntu-desktop ubuntu-desktop-minimal gnome-shell gdm3 gnome-remote-desktop gir1.2-gdm-1.0
sudo apt autoremove

# reinstall minimal gnome environment
sudo apt install --no-install-recommends gnome-session gdm3 gnome-shell gnome-terminal nautilus gnome-software gnome-system-monitor gnome-shell-extention-appindicator gnome-bluetooth linux-sound-base yaru-theme-sound yaru-theme-gtk yaru-theme-icon yaru-theme-gnome-shell

# install flatpak
sudo apt install flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# todo: more here!
