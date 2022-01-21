#!/usr/bin/bash

# ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zinit
sh -c "$(curl -fsSL https://git.io/zinit-install)"

chsh -s /usr/bin/zsh
