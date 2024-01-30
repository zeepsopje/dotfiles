#!/usr/bin/env bash

PACKAGES=$(cat pacman-list.txt)

# Ask for sudo privileges
if [ "$EUID" -ne 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

sudo pacman -Syyu --needed $PACKAGES
