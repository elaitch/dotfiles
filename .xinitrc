# no blanking
xset -dpms; xset s off 

# no mouse accel
xset m 0 0 

# kb stuff
xset r rate 350 40
xbindkeys 
setxkbmap -option compose:ralt -option ctrl:nocaps


# thistle4
hsetroot -solid '#8B7B8B'

# plum 4 
#hsetroot -solid '#8B668B'

# hide cursor
unclutter -noevents -idle 3 &

# max performance! 
nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'

# this is stupid
pactl list sinks

# simple status
sleep 5s && conky | dzen2 -x 1000 -w 1600 -ta r -bg "#222222" -fn 'Ubuntu Mono-10.5' -e 'onstart=raise;button1=togglehide;entertitle=unhide' & 

# shadows are FANCY
compton --config /home/lawren/dotfiles/.config/compton/compton.conf -b

# automount
udiskie &
exec dwm

