#!/bin/bash
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Make backups of everything
    cp ~/README.nick.md ~/README.nick.md.old
    cp ~/.zprofile ~/.zprofile.old
    cp ~/.zshrc ~/.zshrc.old
    cp ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json.old
    cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old 

    # Copy new versions
    cp README.nick.md ~/README.nick.md 
    cp .zprofile ~/.zprofile 
    cp .zshrc ~/.zshrc 
    cp vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json 
    cp init.vim ~/.config/nvim/init.vim 
fi
