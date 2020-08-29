#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main &

right=$(xrandr --query | rg 'HDMI-0')
left=$(xrandr --query | rg 'DVI-D-1')

if [[ $right = *connected* ]]; then
    polybar right &
fi

if [[ $left = *connected* ]]; then
    polybar left &
fi
