# env_setup
How to set up my dev environment

## Ubuntu

In here go to ./ubuntu/ubuntu-fresh.md

### Note: How to set up multiple git creds in one computer
~/.ssh/config:
```
Host github.com
  IdentityFile ~/.ssh/something_id_ed25519
```

In the **separate from those creds repo**:
`git config --local core.sshcommand 'ssh -i ~/.ssh/id_ed25519 -F /dev/null'`

Gtile settings:

![a](gtile.png)

May also have to do this to unset super+alt+up and super+alt+down:
```
# Note i hand typed these and they might have a typo or smth
gsettings set org.gnome.shell.keybindings shift-overview-up "[]"
gsettings set org.gnome.shell.keybindings shift-overview-down "[]"
```

## windows

to map caps lock to escape install keytweak or some other thing

https://vim.fandom.com/wiki/Map_caps_lock_to_escape_in_Windows

https://www.bleepingcomputer.com/download/keytweak/

## mac stuff 

probably useless now, so i hid it, but can be uncommented. won't show up on github.

<!-- 
* Install usb overdrive http://www.usboverdrive.com/USBOverdrive/Download.html
  * It requires a restart
  * Change the mouse scrolling behavior to 3 lines up and 3 lines down
  * If on high sierra, usb overdrive will handle no acceleration; if on earlier, maybe try installing smoothmouse
    * Set mouse sensitivity to about 75% (5 ticks from the right)
  * If on high sierra, you need to install cursorsense to turn off mousepad acceleration 
    http://plentycom.jp/en/cursorsense/download.php i think the correct setting is 1955
* Install homebrew
* Start installing node 
* Install karabiner 
  * I don't remember why i use this other than when using a windows keyboard for a mac
* Remap caps lock to escape in system prefs
* Install iterm2
  * Set up keyboard shortcuts for moving between panes with vim keys
  * Set option to meta. from https://www.iterm2.com/faq.html :
    1. Go to Preferences->Profiles tab. 
    2. Select your profile on the left, and then open the Keyboard tab. 
    3. At the bottom is a set of buttons that lets you select the behavior of the Option key. 
    4. For most users, Esc+ will be the best choice.
  * Just set the color scheme to solarized light in iterm2 preferences. don't download a vim color scheme
    * optionally download another color scheme:
      https://github.com/mbadolato/iTerm2-Color-Schemes
  * Change the background color to something around #ddd6c0
  * Install nerd fonts like this
    * `cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf`
    * in iterm2 preferences go to the 'text' tab and change the non-ascii font to Droid Sans Mono for Powerline... etc.
* Run `git init` to make a popup which installs apple developer tools (takes a while)
  * configure text editor: `git config --global core.editor /usr/bin/vim`
  * configure pushing/pulling style: `git config push.default current`
* Install vundle https://github.com/VundleVim/Vundle.vim
* Install nvim (?)
* Generate ssh key and add to github https://help.github.com/articles/connecting-to-github-with-ssh/
* Install spectacle
* Install vscode
* Run `sh update_dotfiles_locally.sh`
    
## New things for 2020

#### The dorky laser pointer trackball mouse needs:
  1. Add a new keyboard device in usb overdrive, overwrite the 'return' key 
     (currently ctrl+up for look at all windows)
  2. Go to system preferences mouse settings and switch left and right click
     (or don't) (there's nothing more to do with the stupid thing because
     it's considered a keyboard and usb overdrive can't figure it out)

#### Chrome settings

1. Go to chrome://flags/#omnibox-context-menu-show-full-urls
2. Set to enabled
3. Right click the address bar and select "always show full urls"
    1. Sigh
4. Cmd+f around in chrome://flags for other "omnibox" settings to turn
    off bullshit

## Old stuff

* `brew install libuv` may have helped omnisharp work
* open a .cs file to start omnisharp, run `:OmniSharpInstall 'v1.32.1'` because the latest version has problems with sierra
* Manually install YouCompleteMe in its `~/.vim/bundle/` path, apply an extra argument to allow for C# completions
* make a file "omnisharp.json" at ~/.omnisharp/omnisharp.json 
 -->
