#!/usr/bin/env bash

# Create folders
mkdir -p ~/backups
mkdir -p ~/personal
mkdir -p ~/workspace

# Get vim config
curl --silent https://raw.githubusercontent.com/ruanbekker/bash-setup/main/.vimrc --output ~/.vimrc

# Get vim colors
curl --silent https://raw.githubusercontent.com/ruanbekker/bash-setup/main/.vim/colors/molokai.vim --create-dirs --output ~/.vim/colors/molokai.vim

# Get vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Set custom aliases
curl --silent https://raw.githubusercontent.com/ruanbekker/bash-setup/main/.custom/aliases.sh --create-dirs --output ~/.custom/aliases.sh

# OhMyBash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
