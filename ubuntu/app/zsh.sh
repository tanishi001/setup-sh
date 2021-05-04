#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK sudo apt install -y zsh
[[ `echo $SHELL | grep 'zsh'` ]] || chsh -s /bin/zsh

#CHECK bash $SETUP_DIR/resource/ubuntu/go.sh
#CHECK go get -u github.com/justjanne/powerline-go

CHECK cargo install powerline-rs

CHECK git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
CHECK git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

CHECK rm $HOME/.zshrc
CHECK ln -sf $SETUP_DIR/resource/dotfiles/ubuntu.zshrc $HOME/.zshrc
