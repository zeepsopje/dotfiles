#!/bin/bash

# Ask for permissions up-front.
sudo -v

echo "Installing packages..."
apt install i3wm neovim tmux git curl fzf

echo "Symlinking config files..."
