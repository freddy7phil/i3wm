#!/bin/bash -x
battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
echo "$battery_level"
if [ $battery_level -le 10 ]
then
XDG_RUNTIME_DIR=/run/user/1000 paplay /home/fred/Downloads/low_bat.wav
#zenity --warning --title "Battery" --text "Low battery!"
fi
