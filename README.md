     _                    _                   _       _    __ _ _           
    | |                  | |                 | |     | |  / _(_) |          
    | |_ __ _  __ _ _   _| |__  ___ ____   __| | ___ | |_| |_ _| | ___  ___ 
    | __/ _` |/ _` | | | | '_ \/ __|_  /  / _` |/ _ \| __|  _| | |/ _ \/ __|
    | || (_| | (_| | |_| | | | \__ \/ /  | (_| | (_) | |_| | | | |  __/\__ \
     \__\__,_|\__,_|\__,_|_| |_|___/___|  \__,_|\___/ \__|_| |_|_|\___||___/
 

## Contains

- neovim setup
- zsh config
  -  ohmyzsh
  -  zinit (history-search, auto-suggestions, fast-syntax-highlighting)
- gitconfig
- tmux config

## Neovim setup

- Native LSP
  -  [nvimlsp](https://github.com/neovim/nvim-lspconfig)
  -  [nvimcmp](https://github.com/hrsh7th/nvim-cmp)
  -  [lspnaga](https://github.com/glepnir/lspsaga.nvim)
- Themming with top tabs, dev icons and material theme
  -  [Top bar: barbar](https://github.com/romgrk/barbar.nvim)
  -  [Devicons: neovim web devicons](https://github.com/kyazdani42/nvim-web-devicons)
  -  [Material theme](https://github.com/marko-cerovac/material.nvim)
- File explorer
  -  [nvim tree](https://github.com/kyazdani42/nvim-tree.lua)

## Prerequisites

### Dependencies

- Ruby: I recommend you to use [asdf](https://github.com/asdf-vm/asdf) to install ruby
- Rake Gem: gem install rake
- NodeJS: I recommend you to use [asdf](https://github.com/asdf-vm/asdf) to install node

| OS | Command |
| -- | ------- |
| Arch Linux or based distros: | sudo pacman -S base-devel curl zsh lua tmux exa fzf ripgrep |
| Ubuntu or based distros: | sudo apt install build-essential curl zsh lua5.3 tmux exa fzf ripgrep |

## Installation

> Don't forget to install [Ruby](https://github.com/asdf-vm/asdf-ruby) and [NodeJS](https://github.com/asdf-vm/asdf-nodejs) before install

- Clone the repo
- Inside the repo folder, run -> rake install

All installation files will be backed up if exists.
