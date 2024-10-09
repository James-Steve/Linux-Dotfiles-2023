#!/bin/bash
#feh --no-fehbg --bg-scale "$HOME/Documents/Wallpapers/ATAT.jpg"
feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/3840x2160-bmw-e30-digital-art-4k_1540756037.jpg
DIR=/home/jim/Documents/Source/Suckless-Sofware
picom -b
gsettings  set  org.gnome.desktop.peripherals.mouse  accel-profile  flat
xinput set-prop 10 323 -0.5
xset -dpms
xset s off
dwmblocks
