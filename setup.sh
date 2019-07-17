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

