# View this file as raw -- its like a history file

rest is commented out.

<!--
sudo su
apt update
apt install zsh
zsh --version
# logout as superuser, back in as nick
whereis zsh  # it should probably be /usr/bin/zsh, used in next line
sudo usermod -s /usr/bin/zsh $(whoami)
sudo reboot
# Computer will reboot and run zsh
apt install git
apt install vim
git 
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cd Documents
git clone git@github.com:kenning/env_setup.git
cd env_setup
ssh-keygen -t ed25519 -C "<put some note here>"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# Add github to known hosts?
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

apt install xsel
# Open firefox
# go to about:preferences#privacy and turn off the fucking password asker
# Install lastpass, ublock origin, video speed controller
# Log into lastpass
# Log into github
# Go to https://github.com/settings/keys
cat ~/.ssh/id_ed25519.pub| xsel -b
# Paste new key into github

# Source zsh nvm commands
zsrc

# Slack
sudo snap install slack --classic

snap install nvim --classic
snap install chromium

# Install make
sudo apt install build-essential

git config --global user.email "hwerzog@gmail.com"
git config --global user.name "Nick Thinkpad X1"
git config --global core.editor vim
git config --global pull.rebase false
git config --global core.excludesFile '~/.gitignore'

# In settings, unset various super+alt+shift+rightarrow type commands...
# Install gnome tweaks, turn caps to escape, 
# Then install gTile.
# Can do this with the browser. 
gsettings set org.gnome.shell.keybindings shift-overview-up "[]"
gsettings set org.gnome.shell.keybindings shift-overview-down "[]"

# Set up vogue spring theme
( cd $ZSH_CUSTOM/plugins && git clone https://github.com/chrissicool/zsh-256color )
cd ~/Documents
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# To use a bold font in the terminal, actually have to go to gnome tweaks and find 
# 'monospace text' (use search bar) and change it to a bold font. Do not override
# it in terminal bc terminal forces a non-bold font!
# I have been using source code pro.

# Close and reopen 'terminal' application
# In preferences, go to color theme, uhh basically pick solarized light and then
# make a couple more changes -- default color background to orange, default color text
# to a dark grey

################################################################################
####### "Optional" #############################################################
################################################################################

## INSANE workaround for two keyboards at once
## https://gitlab.gnome.org/GNOME/gnome-shell/-/issues/1858#note_818548
cd ~
mkdir mutter
cd mutter
# in 'software & updates' (not software updates lol) check the box in the
# first tab to allow for downloading ubuntu source code
apt-get source mutter
sudo apt-get build-dep mutter
apt-get source mutter
sudo apt-get build-dep mutter
cd mutter-3.36.7+git20201123
vim ./src/backends/x11/meta-backend-x11.c
dpkg-buildpackage -rfakeroot -uc -b
..
sudo dpkg -i libmutter-6-0_3.36.7+git20201123-0.20.04.1_amd64.deb
apt-get source mutter-common
sudo apt-get upgrade mutter-common
apt --fix-broken install
sudo apt --fix-broken install
sudo dpkg -i libmutter-6-0_3.36.7+git20201123-0.20.04.1_amd64.deb
sudo apt-mark hold libmutter-6-0:amd64
