#!/bin/sh
feh --no-fehbg --bg-scale "$HOME/Documents/Wallpapers/ATAT.jpg"
PATH="/home/jim/.local/share/suckless/statusbar/:$PATH"
PATH="/home/jim/.local/share/suckless/statusbar/sb-clock:$PATH"
for f in /home/jim/.local/share/suckless/statusbar/* ; do PATH="$f:$PATH"; done
picom -b
gsettings  set  org.gnome.desktop.peripherals.mouse  accel-profile  flat
xinput set-prop 10 323 -0.5
xset -dpms
xset s off
dwmblocks
