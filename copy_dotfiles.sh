#!/bin/bash

# -ot = older than, -nt = newer than

homereadme=~/README.nick.md
readme=README.nick.md
if [ "$homereadme" -nt "$readme" ]; then
    cp $homereadme $readme
fi

cp ~/.gitignore_global dot/gitignore_global
cp ~/.zprofile dot/.zprofile
cp ~/.zshrc dot/.zshrc
cp ~/Library/Application\ Support/Code/User/settings.json dot/vscode-settings.json
cp ~/.config/nvim/init.vim dot/init.vim
