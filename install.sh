#!/bin/bash

# dependencies
sudo apt install build-essential curl lua5.3 fzf exa tmux

# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update && sudo apt install fish

# vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

chsh -s /usr/bin/fish
