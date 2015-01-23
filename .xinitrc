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


# automount
udiskie &
exec dwm

