#!/bin/sh
numlockx on &
./dwm_bar.sh &
feh --bg-fill ../assets/dwm_background.jpg &
setxkbmap -model pc105 -layout us,ir -option grp:alt_shift_toggle &

parcellite &
kitty &
firefox &
