#!/bin/sh
userprofile=$HOME/.xprofile
userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f $userprofile ]; then

    source $userprofile

fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
sxhkd &
exec bspwm
