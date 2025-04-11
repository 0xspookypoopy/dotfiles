# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
alias config='/usr/bin/git --git-dir=/home/spookypoopy/.cfg/ --work-tree=/home/spookypoopy'
