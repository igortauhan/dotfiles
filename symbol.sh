#!/bin/fish

ln -sf ~/projects/dotfiles/fish/config.fish ~/.config/fish
cp -f ~/projects/dotfiles/fish/fish_plugins ~/.config/fish
ln -sf ~/projects/dotfiles/fish/tide.fish ~/.config/fish/conf.d
ln -sf ~/projects/dotfiles/nvim ~/.config
ln -sf ~/projects/dotfiles/kitty ~/.config
ln -sf ~/projects/dotfiles/extras/.ideavimrc ~
ln -sf ~/projects/dotfiles/extras/.tmux.conf ~
ln -sf ~/projects/dotfiles/extras/.gitconfig ~

fisher update
