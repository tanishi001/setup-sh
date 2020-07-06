#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK yay --needed -S tmux

CHECK rm -rf $HOME/.tmux.conf
CHECK ln -sf $SETUP_DIR/resource/dotfiles/.tmux.conf $HOME/.tmux.conf

CHECK git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
