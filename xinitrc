xrdb -merge ~/.Xresources

while true; do

# Date and Time
DWM_CLOCK=$( date '+%e %b %Y %a - %k:%M' );

# Overall output command
DWM_STATUS="$DWM_CLOCK";
xsetroot -name "$DWM_STATUS";
sleep 1;

done &

exec dwm
