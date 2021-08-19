#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK sudo apt install -y zsh
[[ `echo $SHELL | grep 'zsh'` ]] || chsh -s /bin/zsh

#CHECK bash $SETUP_DIR/resource/ubuntu/go.sh
#CHECK go get -u github.com/justjanne/powerline-go

CHECK curl https://sh.rustup.rs -sSf | sh
CHECK source $HOME/.cargo/env
CHECK cargo install powerline-rs

CHECK git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
CHECK git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

if [ -f $HOME/.zshrc ];then
    CHECK rm $HOME/.zshrc
fi

CHECK ln -sf $SETUP_DIR/resource/dotfiles/ubuntu.zshrc $HOME/.zshrc
