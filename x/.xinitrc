#!/bin/sh

compton &

setxkbmap br

wal -i ~/pics/wallpapers/ &

xrdb -merge ~/.Xresources

synclient TapButton1=1
synclient TapButton2=2

exec bspwm
