typeset -U path
path=(~/bin $path)

export EDITOR=vim
export VISUAL=vim
export BROWSER=firefox
export SYSTEMD_PAGER="/usr/bin/less -R"
export LESS=-R
export PAGER=less

# coloured man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;30;03;36m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;35m'

