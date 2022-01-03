#!/bin/bash

# dependencies
sudo pacman -S base-devel curl lua fzf exa tmux ripgrep fish rofi

# vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

chsh -s /usr/bin/fish
