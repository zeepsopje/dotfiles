#!/bin/bash

# Ask for permissions up-front.
sudo -v

echo "Installing packages..."
apt install i3wm neovim tmux git curl fzf

echo "Symlinking config files..."
[ ! -d "~/.config/nvim" ] && mkdir ~/.config/nvim
ln -sf ../config/init.vim ~/.config/nvim/init.vim
ln -sf ../config/tmux.conf ~/.tmux.conf

echo "Symlinking vim plugins..."
[ ! -d "~/.local/share/site/start" ] && mkdir ~/.local/share/site/start
[ ! -d "~/.local/share/site/opt" ] && mkdir ~/.local/share/site/opt
ln -sf ../nvim-plugins/start ~/.local/share/nvim/start
ln -sf ../nvim-plugins/opt ~/.local/share/nvim/opt
