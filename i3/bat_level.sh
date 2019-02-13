#!/bin/bash

PREV=100;
while true;
do
    LEVEL=100
    
    if [[ $(acpi -b | grep Discharging) ]]; then
       LEVEL=$(acpi -b | cut -f 4 -d " " | grep -oP "\d+")
    fi
    
    if [ $LEVEL -lt $PREV ] && [ $LEVEL -le 15 ]; then
        DISPLAY=:0.0 /usr/bin/notify-send "low battery - $LEVEL% left" "$(acpi -b)"
        PREV=$LEVEL
    fi

    sleep 10s

done;

