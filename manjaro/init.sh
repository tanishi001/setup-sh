#!/bin/bash
readonly setup_dir="$HOME/setup-sh"
source $setup_dir/resource/CHECK.sh

CHECK sudo pacman -Syu
CHECK sudo pacman -S git base-devel yay
