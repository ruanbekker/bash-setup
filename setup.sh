#!/usr/bin/env bash

# Create folders
mkdir -p ~/backups
mkdir -p ~/personal
mkdir -p ~/workspace

# Get vim config
curl --silent https://raw.githubusercontent.com/ruanbekker/bash-setup/main/.vimrc --output ~/.vimrc

# Get vim colors
curl --silent https://raw.githubusercontent.com/ruanbekker/bash-setup/main/.vim/colors/molokai.vim --create-dirs --output ~/.vim/colors/molokai.vim
