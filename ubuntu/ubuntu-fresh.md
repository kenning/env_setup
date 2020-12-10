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
sh -c "$(wget https:#raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cd Documents
git clone https:#github.com/kenning/env_setup.git
cd env_setup
ssh-keygen -t ed25519 -C "<put some note here>"
apt install xsel
# Open firefox
# go to about:preferences#privacy and turn off the fucking password asker
# Install lastpass, ublock origin, video speed controller
# Log into lastpass
# Log into github
# Go to https:#github.com/settings/keys
cat ~/.ssh/id_ed25519.pub| xsel -b
# Paste new key into github
cp -r ubuntu/{.,}* ~

`git clone https:#github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim\n\n
# run vim and type :PluginInstall

# install nvm for node
curl https:#raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
# Source zsh nvm commands
zsrc
# Outerlabs node version
nvm install 12.19.0

# Install tmux
sudo apt install tmux
# Slack
sudo snap install slack --classic

# Go install
# Go to https:#golang.org/doc/install and download go for linux
sudo tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz

# Install make
sudo apt install build-essential

# Install yarn
npm i -g yarn

# Bunch of outerlabs stuff
git config --global user.email "hwerzog@gmail.com"
git config --global user.name "Nick Thinkpad X1"
git config --global core.editor vim

# Docker https:#docs.docker.com/engine/install/ubuntu/
sudo apt-get install 
    apt-transport-https 
    ca-certificates 
    curl 
    gnupg-agent 
    software-properties-common\n
curl -fsSL https:#download.docker.com/linux/ubuntu/gpg | sudo apt-key add -\n
sudo add-apt-repository 
   "deb [arch=amd64] https:#download.docker.com/linux/ubuntu 
   $(lsb_release -cs) 
   stable"\n
sudo apt-get install docker-ce docker-ce-cli containerd.io\n
sudo docker run hello-world\n

# golangci-lint
# binary will be $(go env GOPATH)/bin/golangci-lint\n
curl -sSfL https:#raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.33.0\n\ngolangci-lint --version
golangci-lint

# python
sudo apt install python

# Download and install google cloud sdk https:#cloud.google.com/sdk/docs/install
tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz\n

gio open .
# then extract in documents folder
./google-cloud-sdk/install.sh

# ghokin
make init
cp ghokin_linux_amd64 /bin/ghokin
sudo cp ghokin_linux_amd64 /usr/bin/ghokin
sudo chmod 777 /usr/bin/ghokin

# java
sudo apt install default-jre

# set gcloud project
gcloud config set project onewbs-staging

