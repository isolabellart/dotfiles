My Dotfiles
=============

This is my revised set of dotfiles. After switching from AwesomeWM to i3-gaps.
Originally a port of [ibrahimbutt/direwolf-arch-rice](https://github.com/ibrahimbutt/direwolf-arch-rice) to Void Linux.

Installation & Usage
--------------------

The following instructions assume a fresh and blank installation of Void Linux.

```console
$ sudo xbps-install -S stow git base-devel
$ git clone https://github.com/jbernsie/dotfiles $HOME/.dotfiles
$ cd $HOME/.dotfiles && ./setup.sh
```

Whats The Script Does
---------------------

- Installs the following packages
  - i3-gaps
  - neovim
  - dmenu
  - polybar
  - pywal
  - pulseaudio
  - rxvt-unicode
  - git
  - stow
  - base-devel
  - feh
  - firefox
  - ranger
  - neofetch
  - ASDF version manager
- Installs my i3 rice
- Creates a filestructure in `$HOME`
