#!/bin/bash

rofi_command="rofi -theme themes/scrotmenu.rasi"

### Options ###
screen=""
area=""
window=""
# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $screen)
      sleep 0.2; scrot '%Y-%m-%d-%T-screenshot.png' -e 'mv $f ~/Pictures/Screenshots/' -q 100
        ;;
    $area)
        scrot -s
        ;;
    $window)
        sleep 0.2; scrot -u '%Y-%m-%d-%T-screenshot.png' -e 'mv $f ~/Pictures/Screenshots/' -q 100
        ;;
esac

