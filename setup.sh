#!/usr/bin/env sh

STOW=$(which stow)
PKGMANIFEST=./package_manifest.txt

sudo -v

sudo xbps-install -Syu

while IFS= read -r line
do
  sudo xbps-install -y "$line"
done < "$PKGMANIFEST"

$STOW pkg -t $HOME --restow
$STOW wallpaper -t $HOME/Pictures/Wal/ --restow

pip3 install neovim --user

nvim +PluginInstall +qall
nvim +UpdateRemotePlugins +qall

sudo ln -s /etc/sv/alsa /var/service/
sudo ln -s /etc/sv/cgmanager /var/service/
sudo ln -s /etc/sv/consolekit /var/service/
sudo ln -s /etc/sv/dbus /var/service/
