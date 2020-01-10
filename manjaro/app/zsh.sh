#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK yay --needed -S zsh
[[ `echo $SHELL | grep 'zsh'` ]] || chsh -s /bin/zsh
