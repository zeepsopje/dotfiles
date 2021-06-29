#!/bin/bash

# Ask for permissions up-front.
sudo -v

NVIM_PLUGIN_DIR="$HOME/.local/share/nvim/site/pack/plugin"

echo "Updating repositories..."
# NodeJS
sudo curl https://deb.nodesource.com/setup_14.x | bash
sudo apt update

echo "Installing packages..."
PACKAGES=$(cat ../packages | awk '{print}' ORS=' ')
sudo apt install $PACKAGES

echo "Symlinking config files..."
[ ! -d "~/.config/nvim" ] && mkdir -p ~/.config/nvim
ln -sf ../config/init.vim ~/.config/nvim/init.vim
ln -sf ../config/tmux.conf ~/.tmux.conf

echo "Symlinking neovim plugins..."
echo "Checking if $NVIM_PLUGIN_DIR/[start/opt] exists"
[[ ! -d $NVIM_PLUGIN_DIR ]] && mkdir -p $NVIM_PLUGIN_DIR
[[ ! -d $NVIM_PLUGIN_DIR ]] && mkdir -p $NVIM_PLUGIN_DIR
ln -sf $(pwd)/../nvim-plugins/start $NVIM_PLUGIN_DIR/
ln -sf $(pwd)/../nvim-plugins/opt $NVIM_PLUGIN_DIR/

