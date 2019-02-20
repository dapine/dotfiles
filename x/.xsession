#!/bin/bash

compton &

wal -i ~/Pictures/wallpapers/ &

xrdb -merge ~/.Xresources

exec bspwm
