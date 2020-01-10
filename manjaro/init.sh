#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK sudo pacman -Syu
CHECK sudo pacman -S git base-devel yay

CHECK mkdir $HOME/.config

