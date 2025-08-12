#!/bin/bash
#feh --no-fehbg --bg-scale "$HOME/Documents/Wallpapers/ATAT.jpg"
#feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/3840x2160-bmw-e30-digital-art-4k_1540756037.jpg
#bash $HOME/Documents/linux/pc-client-linux.sh
feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/BackGroundPopeLeo.png
DIR=/home/rob/Documents/Source/Suckless-Sofware
picom -b
xcompmgr &
gsettings  set  org.gnome.desktop.peripherals.mouse  accel-profile  flat
xinput set-prop 10 323 -0.5
xset -dpms
xset s off
bluetoothctl power off
solaar -w hide
xinput --set-prop 8 'libinput Accel Profile Enabled' 0, 1
dwmblocks 
#umonitor -n --daemonize
#feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/Penquins.jpg
