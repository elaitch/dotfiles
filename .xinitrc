xset +fp /usr/share/fonts/local
xset fp rehash
xset -dpms; xset s off 
xset m 0 0 
urxvtd -q -o -f
#sleep 5s && conky | dzen2 -x 1000 -w 1600 -ta r -bg "#222222" -fn -*-termsyn.icons-medium-*-*-*-13-*-*-*-*-*-*-* -e 'onstart=raise;button1=togglehide;entertitle=unhide' &
conky | while read -r; do xsetroot -solid darkslategrey -name "$REPLY"; done & 
xbindkeys 
setxkbmap -option compose:ralt
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
unclutter -noevents -idle 3 &
urxvtc -pe kuake -name Scratchpad -geometry 80x20+674+338
udiskie &
exec dwm

