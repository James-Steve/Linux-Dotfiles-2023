#!/bin/bash
displays=()
readarray -t displays < <( xrandr | grep -v "disconnected" | grep "connected" | awk '{print $1}' )
LeftMon=${displays[2]}
RightMon=${displays[1]}
MainMon=${displays[0]}
echo "The Left Monitor, higher value: $LeftMon"
echo "The Right Monitor, Lower value: $RightMon"
#alias screenpv='xrandr --output DP-7 --right-of eDP-1 --mode 1920x1080; xrandr --output eDP-1 --off; xrandr --output DP-5 --right-of DP-7 --mode 1920x1080; feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/MontStMichealNight.jpg'
#printf '%s\n' "${displays[@]}"
#alias screenpvo='xrandr --output DP-7 --off; xrandr --output DP-5 --off; xrandr --output eDP-1 --auto'

if [ $1 = "on" ]; then
    echo "Turning On $LeftMon, Right of $MainMon"
    xrandr --output $LeftMon --right-of eDP-1 --mode 1920x1080
    echo "Turning On $RightMon, Right of $LeftMon"
    xrandr --output $RightMon --right-of $LeftMon --mode 1920x1080 --gamma 0.85:0.85:0.85
    echo "Turning off $MainMon"
    xrandr --output eDP-1 --off
    for dip in ${displays[@]}; do
        echo "$dip"
    done
else
    echo "Turning off all external monitors"
    xrandr --output $LeftMon --off
    xrandr --output $RightMon --off
    echo "Turning on builtin display"
    xrandr --output $MainMon --auto
fi
feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/MontStMichealNight.jpg

