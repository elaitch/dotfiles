typeset -U path
path=(~/bin $path)

export EDITOR=vim
export VISUAL=vim
export BROWSER=firefox
export SYSTEMD_PAGER="/usr/bin/less -R"
export LESS=-R
export PAGER=less

# more less colours				hints, basically how these effect my manpages		
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;34m' 		#titles etc - most frequently used colour (bold/blue)
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[02;30;03;37m' 	#footers - dim/lightgrey/italic. Black FG variation? '\E[42;30m' 
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m' 		#variables, something complementary to md (bold/green)


