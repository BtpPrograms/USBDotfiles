#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Load terminal colors
xrdb ~/.Xresources

# Sets key refresh rate when holding
xset r rate 200 20

# Sets caps lock to escape
setxkbmap -option caps:escape

# Disable pc speaker beeing
xset -b

sxhkd &
exec bspwm
