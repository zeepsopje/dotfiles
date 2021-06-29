#!/bin/bash

# Ask for permissions up-front.
sudo -v

NVIM_PLUGIN_DIR="$HOME/share/nvim/site/pack/plugin"

echo "Installing packages..."
sudo apt install i3 neovim tmux git curl fzf

echo "Symlinking config files..."
[ ! -d "~/.config/nvim" ] && mkdir -p ~/.config/nvim
ln -sf ../config/init.vim ~/.config/nvim/init.vim
ln -sf ../config/tmux.conf ~/.tmux.conf

echo "Symlinking neovim plugins..."
[ ! -d "$NVIM_PLUGIN_DIR/start" ] && mkdir -p $NVIM_PLUGIN_DIR/start
[ ! -d "$NVIM_PLUGIN_DIR/opt" ] && mkdir -p $NVIM_PLUGIN_DIR/opt
ln -sf $(pwd)/nvim-plugins/start $NVIM_PLUGIN_DIR/start
ln -sf $(pwd)/nvim-plugins/opt $NVIM_PLUGIN_DIR/opt

