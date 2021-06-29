#!/bin/bash

# Ask for permissions up-front.
sudo -v

# Install necessary packages first
sudo apt install curl

NVIM_PLUGIN_DIR="$HOME/.local/share/nvim/site/pack/plugin"

echo "Updating repositories..."
# NodeJS
curl https://deb.nodesource.com/setup_14.x > nodejs.sh
bash nodejs.sh
sudo apt update
rm nodejs.sh

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

