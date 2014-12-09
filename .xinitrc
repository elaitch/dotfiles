xset -dpms; xset s off 
xset m 0 0 
urxvtd -q -o -f
conky | while read -r; do xsetroot -solid darkslategray4 -name "$REPLY"; done & 
xbindkeys 
setxkbmap -option compose:ralt -option ctrl:nocaps
unclutter -noevents -idle 3 &
nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'
urxvtc -pe kuake -name Scratchpad -geometry 80x20+674+338
udiskie &
exec dwm

