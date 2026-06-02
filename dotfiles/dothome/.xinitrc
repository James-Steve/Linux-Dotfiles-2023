#!/bin/bash
feh --no-fehbg --bg-scale $WALLPAPER
DIR=/home/rob/Documents/Source/Suckless-Sofware
picom -b
#xcompmgr &
gsettings  set  org.gnome.desktop.peripherals.mouse  accel-profile  flat
xinput set-prop 10 323 -0.5
xset -dpms
xset s off
bluetoothctl power off
#solaar -w hide
xinput --set-prop 8 'libinput Accel Profile Enabled' 0, 1
