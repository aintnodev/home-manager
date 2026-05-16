#!/usr/bin/env sh

case $1 in
power-saver) BOOL="false" BOOL2="off" ;;
balanced) BOOL="true" BOOL2="on" ;;
performance) BOOL="true" BOOL2="on" ;;
esac

# blur and shadow
hyprctl keyword decoration:blur:enabled "$BOOL"
hyprctl keyword decoration:shadow:enabled "$BOOL"

# layer rules
hyprctl keyword layerrule "blur $BOOL2, match:namespace waybar"
hyprctl keyword layerrule "blur $BOOL2, match:namespace swayosd"
hyprctl keyword layerrule "blur $BOOL2, match:namespace vicinae"
hyprctl keyword layerrule "blur $BOOL2, match:namespace swaync-control-center"
hyprctl keyword layerrule "blur $BOOL2, match:namespace swaync-notification-window"

# animations
hyprctl keyword animations:enabled "$BOOL"

# power profile
powerprofilesctl set "$1"
