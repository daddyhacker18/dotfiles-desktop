#!/bin/sh 

# festival --tts $HOME/.config/qtile/welcome_msg &
# lxsession &
picom &
$HOME/.screenlayout/main.sh &
/usr/bin/emacs --daemon &
sleep 5 &
conky -c $HOME/.config/conky/qtile/doom-one-01.conkyrc &

nm-applet &
tresorit-daemon &

# set wallpaper
nitrogen --restore &

# nightlight.sh &
xscreensaver --no-splash &

# this deamon captures clipboard events for use in clipmenu
clipmenud &

# set keyboard layout
setxkbmap gb &
