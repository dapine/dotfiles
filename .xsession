#!/bin/bash

urxvtd -q -f -o

compton &

wal -i ~/Pictures/wallpapers/ &

xrdb -merge ~/.Xresources

exec bspwm
