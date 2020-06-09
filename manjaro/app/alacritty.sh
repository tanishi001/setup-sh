#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK yay --needed -S alacritty
CHECK rm -rf $HOME/.config/alacritty
CHECK ln -sf $SETUP_DIR/resource/config/alacritty $HOME/.config/alacritty
