#!/bin/sh
#feh --no-fehbg --bg-scale "$HOME/Documents/Wallpapers/ATAT.jpg"
DIR=/home/jim/Documents/Source/Suckless-Sofware
#PATH="/home/jim/.local/share/suckless/statusbar/:$PATH"
#PATH="home/jim/Documents/Source/Suckless-Software/statusbar/:$PATH"
#export $PATH
#PATH="home/jim/Documents/Source/Suckless-Software/statusbar/sb-clock:$PATH"
#PATH="$DIR/statusbar/sb-clock:$PATH"
#for f in /home/jim/Documents/Source/Suckless-Software/statusbar/* ; do PATH="$f:$PATH"; done
picom -b
gsettings  set  org.gnome.desktop.peripherals.mouse  accel-profile  flat
xinput set-prop 10 323 -0.5
xset -dpms
xset s off
dwmblocks
