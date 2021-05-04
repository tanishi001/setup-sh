#!/bin/bash
source $HOME/setup-sh/resource/import.sh

# install nerdfonts
CHECK cd $HOME
CHECK git clone https://github.com/ryanoasis/nerd-fonts
CHECK sudo $HOME/nerd-fonts/install.sh

# install lsd
# CHECK yay --needed -S lsd


