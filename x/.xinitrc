#!/bin/sh

compton &

setxkbmap br

if [ $WAL ]
then
    wal -i ~/pics/wallpapers/ &
else
    install-theme
    xrdb -merge "$HOME/.themes/$THEME/colors.Xresources"
fi

# xrdb -merge ~/.Xresources

synclient TapButton1=1
synclient TapButton2=2

exec bspwm
