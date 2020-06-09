#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK sudo pacman -Syu
CHECK sudo pacman -S git base-devel yay
if [ -d ! $HOME/.config ]; then
    CHECK mkdir $HOME/.config
fi

