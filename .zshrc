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
autoload -U colors && colors
PROMPT='$fg_no_bold[green]$VIMODE$reset_color $fg_no_bold[cyan]%0~$reset_color
>'


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
alias netflix='google-chrome-stable --app=http://www.netflix.com'

# fix git complete hangs?
__git_files () { 
    _wanted files expl 'local files' _files     
}
