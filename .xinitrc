#!/bin/sh

#xhost +'local:root'

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

#exec gnome-session
#exec xmonad
exec i3
