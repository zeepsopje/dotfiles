#!/bin/bash

# Set the working dir to the directory this script lives inside of
cd "$(dirname "$0")"

# Ask for permissions up-front.
sudo -v

# Install necessary packages first
sudo apt install curl

NVIM_PLUGIN_DIR="$HOME/.local/share/nvim/site/pack/plugin"
NVIM_COLOR_DIR="$HOME/.config/nvim/colors"

echo "Updating repositories..."
# NodeJS
curl https://deb.nodesource.com/setup_14.x > nodejs.sh
sudo bash nodejs.sh
sudo apt update
rm nodejs.sh

echo "Installing packages..."
PACKAGES=$(cat ../packages | awk '{print}' ORS=' ')
sudo apt install $PACKAGES

echo "Symlinking config files..."
[ ! -d "~/.config/nvim" ] && mkdir -p ~/.config/nvim
ln -sf $(pwd)/../nvim/config.vim ~/.config/nvim/init.vim
ln -sf $(pwd)/../tmux/config.conf ~/.tmux.conf
ln -sf $(pwd)/../system/xprofile ~/.xprofile

echo "Symlinking neovim plugins..."
[[ ! -d ~/.local/share/nvim/site/pack/plugin ]] && mkdir -p ~/.local/share/nvim/site/pack/plugin
[[ ! -d ~/.local/share/nvim/site/pack/plugin ]] && mkdir -p ~/.local/share/nvim/site/pack/plugin
ln -sf $(pwd)/../nvim/plugins/start ~/.local/share/nvim/site/pack/plugin/
ln -sf $(pwd)/../nvim/plugins/opt ~/.local/share/nvim/site/pack/plugin/

echo "Symlinking neovim colorschemes..."
[[ ! -d /.config/nvim/colors ]] && mkdir -p /.config/nvim/colors
ln -sf $(pwd)/../nvim/colors/* /.config/nvim/colors/

echo "Setting up rofi..."
[[ ! -d ~/.config/rofi ]] && mkdir -p ~/.config/rofi
[[ ! -d /usr/share/rofi/themes ]] && sudo mkdir -p /usr/share/rofi/themes
ln -sf $(pwd)/../rofi/themes/* /usr/share/rofi/themes

echo "Setting up i3..."
[[ ! -d ~/.config/i3 ]] && mkdir -p ~/.config/i3
ln -sf $(pwd)/../i3/config ~/.config/i3

source ~/.xprofile
