# Aliases at the end of .zshrc instead of here:
# alias gb="git branch | cat"

# ---------------------------------------------------------------------
# Secret stuff not for env_setup repo

source ~/.secret

# ---------------------------------------------------------------------
# My shortcuts

## Source this once done editing 

alias zsrc="source ~/.zshenv"

## Readme's
alias tt="less ~/README.nick.md"
alias githelp="less ~/.oh-my-zsh/plugins/git/README.md"

## Funny 
alias please="sudo"

## Zsh git plugin style command
alias gcpp="git checkout preproduction"

# ---------------------------------------------------------------------
# Handmade bashmarks

## Collective
export cwwd="~/Documents/card-editor"
export clwd="~/Documents/library/website"
export cawd="~/Documents/art-editor/"

## Personal
export ptwd="~/Documents/gatsbyblog"
export pewd="~/Documents/env_setup"

## Outerlabs
export o1wd="~/Documents/ol/onewbs"

## Matt app
export mawd="~/Documents/mattapp"

## Implement shortcuts
alias ccw="cd $cwwd"
alias ccl="cd $clwd"
alias cca="cd $cawd"
alias cpt="cd $ptwd"
alias cpe="cd $pewd"
alias co1="cd $o1wd"
alias cma="cd $mawd"

# ---------------------------------------------------------------------
# Work

## Outerlabs

# ??

# ---------------------------------------------------------------------
# Shit copy and pasted off the internet that i don't really understand

## Android simulator

export ANDROID_SDK=~/Library/Android/sdk
# export PATH=~/Library/Android/sdk/platform-tools:$PATH:/usr/local/mysql/bin/

## Nvim

# alias vim="nvim" 
alias vimedit="vim ~/.config/nvim/init.vim"

## Zsh

### Vim text editing mode
bindkey -v

### Show visual indication when in normal mode

function zle-line-init zle-keymap-select {
VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
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

export PATH=/usr/local/bin:/usr/local/opt/python/libexec/bin:/usr/local/go/bin:/home/nick/go/bin:$PATH

## Python shit, very sus

export CLOUDSDK_PYTHON=$(which python)

## Run tmux

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/nick/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/home/nick/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/nick/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/nick/Documents/google-cloud-sdk/completion.zsh.inc'; fi
