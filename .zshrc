source ~/.zsh/keys.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh

# Variables
export BROWSER='firefox'
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'

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

# History search  
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# Prompt
autoload -U promptinit && promptinit
prompt pure
PURE_GIT_UNTRACKED_DIRTY=0

# Use emacs mode
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Dircolors
autoload -U colors && colors
autoload -U promptinit && promptinit
eval $(dircolors ~/.dircolors)


# Tmux
PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"
source ~/scripts/tmuxinator.zsh
alias=td='tmux detach'
alias tm='tmuxinator start lh'

# Aliases

# general
alias l='ls -A --group-directories-first --color=auto'
alias ls='ls --group-directories-first --color=auto'
alias rm='rm -i'
alias grep='grep --color=auto'

# pacman
alias pacU='sudo pacman -Syu'
alias pacQ='pacman -Qii'
alias pacI='sudo pacman --upgrade'
alias pacX='sudo pacman --remove --nosave --recursive'
alias pacx='sudo pacman --remove'

# git
alias ga='git add'
alias gc='git commit'
alias gca='git commit -a'
alias gp='git push'
alias gs='git status'

# no correct
alias virtualbox 'nocorrect virtualbox'

# fix git complete hangs?
__git_files () { 
    _wanted files expl 'local files' _files     
}
