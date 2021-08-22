#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK sudo add-apt-repository ppa:longsleep/golang-backports
CHECK sudo apt update
CHECK sudo apt install golang

# coc.nvim golang languageserver gopls
CHECK GO111MODULE=on go get golang.org/x/tools/gopls@latest


