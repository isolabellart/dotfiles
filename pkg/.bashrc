# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment
. $HOME/.profile

# aliases
. $HOME/.aliases

# Load ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Pop neofetch
neofetch
