xset +fp /usr/share/fonts/local
xset fp rehash
xset -dpms; xset s off 
xset m 0 0 
urxvtd -q -o -f
conky | while read -r; do xsetroot -solid darkslategray4 -name "$REPLY"; done & 
xbindkeys 
setxkbmap -option compose:ralt -option ctrl:nocaps
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
unclutter -noevents -idle 3 &
urxvtc -pe kuake -name Scratchpad -geometry 80x20+674+338
nvidia-settings --load-config-only &
udiskie &
exec dwm

