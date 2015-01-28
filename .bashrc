# my first~
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash completion
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

# make completion zsh-esque
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

shopt -s cdspell 
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s extglob # Neccessary for programmable completion
shopt -s histappend histreedit histverify

# Avoid duplicates
export HISTCONTROL=ignoreboth 

# and never forget
export HISTSIZE=1000                   
export HISTFILESIZE=100000 

# prompt
PS1='\[\e[0;36m\]\w\[\e[m\]\[\e[1;34m\] $(__git_ps1 "%s")\[\e[m\]
>'

# for git prompt
source /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# Key bindings, up/down arrow searches through history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'

# Aliases

alias ls='ls -A --group-directories-first --color=auto'
alias rm='rm -i'

# pacman
alias pacU="sudo pacman -Syu"
alias pacQ="pacman -Qii"
alias pacI="sudo pacman --upgrade"
alias pacX="sudo pacman --remove --nosave --recursive"
alias pacx="sudo pacman --remove'"

# git
alias ga="git add"
alias gc="git commit"
alias gca="git commit all"
alias gp="git push"
alias gs="git status"

# misc
alias tmux-dome='tmuxinator start dome'

