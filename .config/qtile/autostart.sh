#!/bin/sh
setxkbmap latam
picom --config ~/.config/picom/picom.conf &
nitrogen --restore
numlockx on
#amixer set 'Master' 100%
