xset -dpms; xset s off 
xset m 0 0 
urxvtd -q -o -f
xsetroot -solid steelblue & 
xbindkeys 
setxkbmap -option compose:ralt -option ctrl:nocaps
unclutter -noevents -idle 3 &
nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'
sleep 5s && conky | dzen2 -x 1000 -w 1600 -ta r -bg "#222222" -fn -*-termsyn.icons-medium-*-*-*-13-*-*-*-*-*-*-* -e 'onstart=raise;button1=togglehide;entertitle=unhide' &
urxvtc -pe kuake -name Scratchpad -geometry 80x20+674+338
udiskie &
exec dwm

