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
# cp $HOME/.vimrc ./dot/vimrc
# cp $HOME/.config/nvim/init.vim ./dot/init.vim

# # tmuxconf
# cp $HOME/.tmux.conf ./dot/tmux.conf

# gitignore
cp $HOME/.gitignore ./dot/gitignore

# Middle click issue
cp $HOME/.xbindkeysrc ./dot/xbindkeysrc 

# sublime
cp $HOME/.config/sublime-text/Packages/User/Preferences.sublime-settings ./dot/Preferences.sublime-settings
cp $HOME/.config/sublime-text/Packages/User/Default\ \(Linux\).sublime-keymap ./dot/Default\ \(Linux\).sublime-keymap

printf "";
printf "\033[4;33mSuccess\033[0m\n"
printf "";

