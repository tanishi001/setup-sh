#!/bin/bash
source $HOME/setup-sh/resource/import.sh


CHECK sudo add-apt-repository ppa:aslatter/ppa
CHECK sudo apt install alacritty

CHECK rm -rf $HOME/.config/alacritty
CHECK ln -sf $SETUP_DIR/resource/config/alacritty $HOME/.config/alacritty
