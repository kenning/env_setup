# env_setup
How to set up my dev environment

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
* If pre-Sierra, install seil from the guys who brought you karabiner
  * Follow instructions in seil to remap caps to escape
  * If on sierra, you can do this natively now in the keyboard section of system prefs
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
    * `gem install colorls` 
* Run `git init` to make a popup which installs apple developer tools (takes a while)
  * configure text editor: `git config --global core.editor /usr/bin/vim`
  * configure pushing/pulling style: `git config push.default current`
* Install vundle https://github.com/VundleVim/Vundle.vim
* Install bashmarks https://github.com/huyng/bashmarks
* Install vim 7.4? Idk how to do this and i remember it being a huge pain, so youcompleteme is disabled right now
  * ctrl + n should autocomplete a lot of things anyway.
* Generate ssh key and add to github https://help.github.com/articles/connecting-to-github-with-ssh/
* Install spectacle
* Install vscode
  * Install C#, Debugger for Unity, Git Lens, Vim, Sort lines extensions as necessary
  * In preferences -> workspace settings tab, you can change a specific directory's color scheme like:
    `    "workbench.colorTheme": "Monokai Dimmed"`
    
* `brew install libuv` may have helped omnisharp work
* open a .cs file to start omnisharp, run `:OmniSharpInstall 'v1.32.1'` because the latest version has problems with sierra
* Manually install YouCompleteMe in its `~/.vim/bundle/` path, apply an extra argument to allow for C# completions
* make a file "omnisharp.json" at ~/.omnisharp/omnisharp.json 
