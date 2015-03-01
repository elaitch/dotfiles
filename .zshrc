# My first zshrc

typeset -U path
export PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"

zmodload zsh/terminfo

source ~/dotfiles/zsh/keys.zsh
source ~/dotfiles/zsh/history.zsh
source ~/dotfiles/zsh/completion.zsh
source /etc/profile.d/vte.sh

# Directory options
setopt AUTO_CD 			# Auto changes to a directory without typing cd.
setopt AUTO_PUSHD 		# Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS 	# Do not store duplicates in the stack.
setopt PUSHD_SILENT 		# Do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME 		# Push to home directory when no argument is given.
setopt CDABLE_VARS 		# Change directory to a path stored in a variable.
setopt AUTO_NAME_DIRS 		# Auto add variable-stored paths to ~ list.
setopt MULTIOS 			# Write to multiple descriptors.
setopt EXTENDED_GLOB 		# Use extended globbing syntax.
unsetopt CLOBBER 		# Do not overwrite existing files with > and >>.
				# Use >! and >>! to bypass.
# History
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
alias hs="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"

setopt BANG_HIST 		# Treat the '!' character specially during expansion.
setopt INC_APPEND_HISTORY 	# Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY 		# Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST 	# Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS 	# Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS 	# Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS 	# Do not display a previously found event.
setopt HIST_IGNORE_SPACE 	# Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS 	# Do not write a duplicate event to the history file.
setopt HIST_VERIFY 		# Do not execute immediately upon history expansion.
setopt HIST_BEEP 		# Beep when accessing non-existent history.

# Prompt
autoload -U promptinit && promptinit
prompt pure
PURE_GIT_UNTRACKED_DIRTY=0

# Dircolors
autoload -U colors && colors
autoload -U promptinit && promptinit
eval $(dircolors ~/.dircolors)

# Use emacs mode
bindkey -e

# Bindings

# ctrl arrow
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word

# history search  
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# shift + tab to go to the previous menu item.
bindkey  '^[[Z' reverse-menu-complete

# Aliases

# general
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias csl='cat ~/documents/ell'
alias cse='cat ~/documents/cs'
alias virtualBox='virtualbox'
alias ds='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# git
alias ga='git add'
alias gc='git commit --verbose '
alias gca='git commit --verbose --all'
alias gp='git push'
alias gpl='git pull'
alias gs='git status'

# ls
alias l='ls -AL --group-directories-first --color=auto'
alias ls='ls -L --group-directories-first --color=auto'
alias lh='ls -lh' 		# Lists human readable sizes.
alias lhh='ls -lhA' 		# Lists human readable sizes, hidden files.
alias lx='ls -lhXB' 		# Lists sorted by extension (GNU only).
alias lk='ls -lhSr' 		# Lists sorted by size, largest last.
alias lka='ls -AlhSr'		# + all
alias lc='ls -lhtrc' 		# Lists sorted by date, most recent last, shows change time.
alias lca='ls -Alhtrc' 		# + all

# pacman
alias pacU='sudo pacman -Syu'
alias pacq='pacman -Sii'
alias pacQ='pacman -Qi'
alias pacQi='pacman -Qii'
alias pacI='sudo pacman --upgrade'
alias pacX='sudo pacman --remove --nosave --recursive'
alias pacx='sudo pacman --remove'

# tmux
source ~/scripts/tmuxinator.zsh
alias td='tmux detach'
alias tm='tmuxinator start lh'
alias tw='tmuxinator start wee'

# fix git complete hangs?
__git_files () { 
    _wanted files expl 'local files' _files     
}
