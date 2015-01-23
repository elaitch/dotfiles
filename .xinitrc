# no blanking
xset -dpms; xset s off 

# no mouse accel
xset m 0 0 

# kb stuff
xbindkeys 
setxkbmap -option compose:ralt -option ctrl:nocaps

# simple geometric bg
hsetroot -fill ~/images/arch/geo5.png

# hide cursor
unclutter -noevents -idle 3 &

# max performance! 
nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'

# simple status bar
sleep 5s && conky | dzen2 -x 1000 -w 1600 -ta r -bg "#222222" -fn "Ubuntu Mono" -e 'onstart=raise;button1=togglehide;entertitle=unhide' & 

# automount
udiskie &
exec dwm

