#!/bin/bash
source $HOME/setup-sh/resource/import.sh

CHECK sudo apt install -y curl gcc

CHECK curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
CHECK source ~/.profile

