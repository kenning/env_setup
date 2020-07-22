# Aliases at the end of .zshrc instead of here:
# alias gb="git branch | cat"

# ------------------------------------------------------------------------------
# Secret stuff not for env_setup repo

source ~/.secret

# ------------------------------------------------------------------------------
# My shortcuts

## Source this once done editing 

alias zsrc="source ~/.zprofile"

## Readme's
alias tt="less ~/README.nick.md"
alias githelp="less ~/.oh-my-zsh/plugins/git/README.md"

## Funny 
alias please="sudo"

## Zsh git plugin style command
alias gcpp="git checkout preproduction"

## Install nano on heroku

alias herokunano="echo 'mkdir /app/nano && curl https://github.com/Ehryk/heroku-nano/raw/master/heroku-nano-2.5.1/nano.tar.gz --location --silent | tar xz -C /app/nano && export PATH=\$PATH:/app/nano' | pbcopy"

# ------------------------------------------------------------------------------
# Handmade bashmarks

## Collective
export cwwd="~/Documents/card-editor"
export clwd="~/Documents/library/website"
export cawd="~/Documents/art-editor/"

## Personal
export ptwd="~/Documents/gatsbyblog"
export pewd="~/Documents/env_setup"

## Kapwing
export kkwd="~/Documents/kapwing/kapwing"
export kswd="~/Documents/kapwing/kapwing-scripts"

## Matt app
export mawd="~/Documents/mattapp"

## Implement shortcuts
alias ccw="cd $cwwd"
alias ccl="cd $clwd"
alias cca="cd $cawd"
alias cpt="cd $ptwd"
alias cpe="cd $pewd"
alias ckk="cd $kkwd"
alias cks="cd $kswd"
alias cma="cd $mawd"

# ------------------------------------------------------------------------------
# Work

## Kapwing

export REACT_APP_DISABLE_REDUX_LOG=true
export SKIP_PREFLIGHT_CHECK=true
#alias helpcenter=      in .secret
#alias companyblog=     in .secret
function rks() {
  cd ~/Documents/kapwing/kapwing-scripts
  sudo make run-local ID=$1
}

# ------------------------------------------------------------------------------
# Shit copy and pasted off the internet that i don't really understand

## Android simulator

export ANDROID_SDK=/Users/ethos/Library/Android/sdk
export PATH=/Users/ethos/Library/Android/sdk/platform-tools:$PATH:/usr/local/mysql/bin/

## Nvim

alias vim="nvim" 
alias vimedit="vim ~/.config/nvim/init.vim"

## Zsh

### Vim text editing mode
bindkey -v

### Show visual indication when in normal mode

function zle-line-init zle-keymap-select {
  VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
  RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $(git_custom_status) $EPS1"
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

### Reduce 0.4s lag when you hit escape key
export KEYTIMEOUT=1

## Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/usr/local/sbin:/usr/local/opt/python/libexec/bin:$PATH

## Python shit, very sus

export CLOUDSDK_PYTHON=$(which python)

export PATH=/usr/local/bin:/usr/local/sbin:/Users/ethos/Library/Python/3.8/bin:$PATH

## Run tmux

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

