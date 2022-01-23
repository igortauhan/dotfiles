     _                    _                   _       _    __ _ _           
    | |                  | |                 | |     | |  / _(_) |          
    | |_ __ _  __ _ _   _| |__  ___ ____   __| | ___ | |_| |_ _| | ___  ___ 
    | __/ _` |/ _` | | | | '_ \/ __|_  /  / _` |/ _ \| __|  _| | |/ _ \/ __|
    | || (_| | (_| | |_| | | | \__ \/ /  | (_| | (_) | |_| | | | |  __/\__ \
     \__\__,_|\__,_|\__,_|_| |_|___/___|  \__,_|\___/ \__|_| |_|_|\___||___/
 

## Contains

- zsh config
  -  ohmyzsh
  -  zinit (history-search, auto-suggestions, fast-syntax-highlighting)
- gitconfig
- tmux config

## Prerequisites

### Dependencies

- Ruby: I recommend you to use [asdf](https://github.com/asdf-vm/asdf) to install ruby
- Rake Gem: gem install rake

| OS | Command |
| -- | ------- |
| Arch Linux or based distros: | sudo pacman -S base-devel curl zsh lua tmux exa fzf ripgrep |
| Ubuntu or based distros: | sudo apt install build-essential curl zsh lua5.3 tmux exa fzf ripgrep |

## Installation

- Clone the repo
- Inside the repo folder, run -> rake install

All installation files will be backed up if exists.
