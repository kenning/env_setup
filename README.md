# env_setup
How to set up my dev environment

* Install usb overdrive http://www.usboverdrive.com/USBOverdrive/Download.html
  * It requires a restart
  * Change the mouse scrolling behavior to 3 lines up and 3 lines down
* Install homebrew
* Start installing node
* Install smoothmouse
* Install karabiner 
  * I don't remember why i use this other than when using a windows keyboard for a mac
* Install seil from the guys who brought you karabiner
  * Follow instructions in seil to remap caps to escape
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
* Run `git init` to make a popup which installs apple developer tools (takes a while)
  * configure text editor: `git config --global core.editor /usr/bin/vim`
* Install vundle https://github.com/VundleVim/Vundle.vim
* Install bashmarks https://github.com/huyng/bashmarks
* Install vim 7.4? Idk how to do this and i remember it being a huge pain, so youcompleteme is disabled right now
  * ctrl + n should autocomplete a lot of things anyway.
* Generate ssh key and add to github https://help.github.com/articles/connecting-to-github-with-ssh/
* Install spectacle
