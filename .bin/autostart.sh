#!/usr/bin/sh
# |------------------------------------------|
# |             Autostart Config             |
# |         Author: Francisco Suárez         |
# |            github: tarkin88              |
# |------------------------------------------|
xrandr --output DVI-D-0 --primary --mode 3440x1440 --pos 1920x0 --rotate normal --output HDMI-0 --mode 1920x1080 --pos 0x238 --rotate normal &
betterlockscreen -w &
# setxkbmap "us(alt-intl)" &
greenclip daemon &
numlockx on &
sleep 1s; ~/.bin/launch_polybar.sh &
sleep 1s; redshift -l "20.671955:-103.416504" -t 7700:4700 -g 0.8 -m vidmode &
sleep 2s; dunst &
sleep 3s; picom -b --experimental-backends --dbus --config ~/.config/picom.conf &
sleep 3s; [ ! -s ~/.config/mpd/pid ] && mpd &
sleep 3s; /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
sleep 4s; udiskie -aT &
sleep 8s; xautolock -time 18 -locker 'betterlockscreen --lock dimblur' -notify 19 -notifier "notify-send -u normal -t 10000 -- 'LOCKING screen'" &
