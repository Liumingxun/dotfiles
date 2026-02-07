#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

[ -s "$HOME/.g/env" ] && source "$HOME/.g/env"  
[ -s "$HOME/.deno/env" ] && source "$HOME/.deno/env"
source $HOME/.local/share/bash-completion/completions/deno.bash
