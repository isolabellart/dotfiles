#!/usr/bin/env sh

STOW=$(which stow)
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

# Link dotfiles
$STOW pkg -t $HOME --restow
$STOW wallpaper -t $HOME/Pictures/Wal/ --restow

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
