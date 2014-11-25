[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
