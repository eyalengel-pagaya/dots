#!/bin/bash

echo $(xrandr -q | awk '/primary/{print $4}' | cut -d'+' -f1)
killall cat
LOCK_SCREEN_WALLPAPER=${1:-'~/Pictures/Wallpapers/AyCALdF.jpg'}
convert -resize $(xrandr -q | awk '/primary/{print $4}' | cut -d'+' -f1) $LOCK_SCREEN_WALLPAPER scaled_lockscreen.jpg && i3lock -tefn -i scaled_lockscreen.jpg
