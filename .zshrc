# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dome/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


autoload -U colors && colors
autoload -U promptinit && promptinit
prompt pure

RPROMPT='$VIMODE'

# set VIMODE according to the current mode (default “[i]”)

VIMODE='[i]'
function zle-keymap-select {
 VIMODE="${${KEYMAP/vicmd/[n]}/(main|viins)/[i]}"
  zle reset-prompt
  }

  zle -N zle-keymap-select


EDITOR=/usr/bin/vim
VISUAL=/usr/bin/vim

PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"
source ~/scripts/tmuxinator.zsh
alias tmux-dome='tmuxinator start dome'

# fix git complete hangs?
__git_files () { 
    _wanted files expl 'local files' _files     
}
