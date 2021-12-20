#!/bin/bash

# dependencies
sudo dnf groupinstall "Development Tools" "Development Libraries"
sudo dnf install lua5.3 fzf exa tmux fish kitty rofi

# vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

chsh -s /usr/bin/fish
