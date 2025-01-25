#!/bin/bash

printf "";
printf "\033[;32mshould be run from $pewd (\$pewd in .zshenv)\033[0m\n"

# vscode settings json
cp ./dot/vscode-settings.json $HOME/.config/Code/User/settings.json 

# vscode keyboard shortcuts
cp ./dot/vscode-keybindings.json $HOME/.config/Code/User/keybindings.json 

# zsh -env, -profile, -rc
cp ./dot/zshenv $HOME/.zshenv 
# cp $HOME/.zprofile ./dot/zprofile
cp ./dot/zshrc $HOME/.zshrc

# vim
#cp $HOME/.vimrc ./dot/vimrc
#cp $HOME/.config/nvim/init.vim ./dot/init.vim

# tmuxconf
#cp $HOME/.tmux.conf ./dot/tmux.conf

# gitignore
cp ./dot/gitignore $HOME/.gitignore

# sublime
# cp ./dot/Preferences.sublime-settings $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
# cp ./dot/Default\ \(Linux\).sublime-keymap $HOME/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap

printf "";
printf "\033[4;33mSuccess\033[0m\n"
printf "";
