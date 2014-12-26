# no blanking
xset -dpms; xset s off 

# no mouse accel
xset m 0 0 

# urxvt daemon 
urxvtd -q -o -f

# simple gradient bg
hsetroot -solid '#335085'

# kb stuff
xbindkeys 
setxkbmap -option compose:ralt -option ctrl:nocaps

# hide cursor
unclutter -noevents -idle 3 &

# max performance! 
nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'

# mouseover to hide
sleep 5s && conky | dzen2 -x 1000 -w 1600 -ta r -bg "#222222" -fn -*-termsyn.icons-medium-*-*-*-13-*-*-*-*-*-*-* -e 'onstart=raise;button1=togglehide;entertitle=unhide' &

# shadows are FANCY
compton --config /home/lawren/dotfiles/.config/compton/compton.conf -b

# automount
udiskie &
exec dwm

