# alias `lc` as ls replacement with nice icon font
alias lc='colorls -r'
alias ls='echo "
use lc
" && ls'

# Remember the last 10k commands
export HISTSIZE=100000
export HISTFILESIZE=1000000000
# Ignore duplicate commands.
export HISTCONTROL=ignoreboth

# Bashmarks
source ~/.local/bin/bashmarks.sh

