#!/bin/bash

[ -z "$1" ] && exit

script=$1
shift

if wmctrl -l | awk "/$script/{print \$4}";
then # If window exists
    i3 "[title=\"^$1\$\"] scratchpad show; [title=\"^$1\$\"] move position center"
fi
