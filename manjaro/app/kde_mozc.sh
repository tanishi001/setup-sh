#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK sudo pacman -Syu
CHECK sudo pacman -S fcitx fcitx-configtool fcitx-moz

if [ -d $HOME/.xprofile ]; then
    CHECK rm $HOME/.xprofile
fi

CHECK ln -sf $SETUP_DIR/resource/dotfiles/.xprofile $HOME/.xprofile

