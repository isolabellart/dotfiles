#!/usr/bin/env sh

PKGMANIFEST=./package_manifest.txt

# Ask for sudo
sudo -v

# Update + Install packages
# from XBPS
sudo xbps-install -Syu
while IFS= read -r line
do
  sudo xbps-install -y "$line"
done < "$PKGMANIFEST"

# Create User Directories
mkdir -p $HOME/Code
mkdir -p $HOME/Pictures/Wal
mkdir -p $HOME/build
mkdir -p $HOME/Documents
mkdir -p $HOME/Downloads

# Link dotfiles
stow dots -t $HOME --restow
stow wallpaper -t $HOME/Pictures/Wal/ --restow
sudo stow urxvt-ext -t /usr/lib/urxvt/perl/ --restow

# Neovim plugins
pip3 install neovim --user
nvim +PluginInstall +qall
nvim +UpdateRemotePlugins +qall

# Install ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

# System services
sudo ln -s /etc/sv/alsa /var/service/
sudo ln -s /etc/sv/cgmanager /var/service/
sudo ln -s /etc/sv/consolekit /var/service/
sudo ln -s /etc/sv/dbus /var/service/
