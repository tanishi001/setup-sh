#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK yay --needed -S neovim npm

CHECK rm -rf $HOME/.config/nvim
CHECK ln -sf $SETUP_DIR/resource/config/nvim $HOME/.config/nvim
