#!/bin/bash

printf "";
printf "\033[;32mshould be run from $pewd (\$pewd in .zshenv)\033[0m\n"

# vscode settings json
cp $HOME/.config/Code/User/settings.json ./dot/vscode-settings.json

# vscode keyboard shortcuts
cp $HOME/.config/Code/User/keybindings.json ./dot/vscode-keybindings.json

# zsh -env, -profile, -rc
cp $HOME/.zshenv ./dot/zshenv
# cp $HOME/.zprofile ./dot/zprofile
cp $HOME/.zshrc ./dot/zshrc

# vim
cp $HOME/.vimrc ./dot/vimrc
cp $HOME/.config/nvim/init.vim ./dot/init.vim

# tmuxconf
cp $HOME/.tmux.conf ./dot/tmux.conf

# gitignore
cp $HOME/.tmux.conf ./dot/tmux.conf

printf "";
printf "\033[4;33mSuccess\033[0m\n"
printf "";

