#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi
 
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
. /usr/share/git/completion/git-prompt.sh
fi

alias vi=vim
alias ls='ls --color=auto'
alias alsamixer='alsamixer -g'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1

PS1='[\[\e[38;5;40m\]\u\[\e[m\]: \[\e[38;5;39m\]\w\[\e[m\]\[\e[38;5;160m\]$(__git_ps1 " %s")\[\e[m\]]\n\[\e[38;5;208m\]$\[\e[m\] '
