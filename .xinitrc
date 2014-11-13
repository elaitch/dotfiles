xset +fp /usr/share/fonts/local
xset fp rehash
xset -dpms; xset s off 
xset m 0 0 
urxvtd -q -o -f
sleep 5s && conky | dzen2 -x 1000 -w 1600 -ta r -bg "#222222" -fn -*-termsyn.icons-medium-*-*-*-13-*-*-*-*-*-*-* -e 'onstart=raise;button1=togglehide;entertitle=unhide' &
xbindkeys 
setxkbmap -option compose:ralt
eval `cat ~/.fehbg` &
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
dropboxd &
#calibre-server --daemonize &
urxvtc -pe kuake -name Scratchpad -geometry 80x20+674+338
#xflux -l 48.8 -g -123.5 -k 4300
udiskie &
dwm

