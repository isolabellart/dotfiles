#!/usr/bin/env sh

STOW=$(which stow)

$STOW pkg -t $HOME --restow
