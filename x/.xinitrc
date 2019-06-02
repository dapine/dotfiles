#!/bin/sh

setxkbmap br

sxhkd &

while true; do
    xsetroot -name "vol: $(amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]') | bat: $(cat /sys/class/power_supply/BAT0/capacity)% | $(date +"%H:%M")"
    sleep 60
done &

exec dwm
