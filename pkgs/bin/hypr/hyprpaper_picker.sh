#!/usr/bin/env sh

WALL=$(find ~/Pictures/Walls/ -type f | vicinae dmenu -p 'Pick a wallpaper...')
hyprctl hyprpaper wallpaper ", $WALL, cover"
