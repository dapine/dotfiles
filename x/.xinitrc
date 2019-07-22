#!/bin/sh

setxkbmap br

if [ $PYWAL ]
then
    wal -i ~/pics/wallpapers/ &
    source "${HOME}/.cache/wal/colors.sh"
fi

exec $WM
