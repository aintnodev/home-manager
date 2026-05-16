#!/usr/bin/env sh

# notify() {
#   notify-send "Power Profile" "$1" -h int:transient:1 -h string:x-canonical-private-synchronous:powerprofile -i dialog-information -u low
# }

PROFILE=$(powerprofilesctl get)

case $PROFILE in
power-saver)
  decoration-lib balanced
  swayosd-client --custom-message "Balanced mode" --custom-icon 'power-profile-power-saver-symbolic'
  ;;
balanced)
  decoration-lib performance
  swayosd-client --custom-message "Performance mode" --custom-icon 'power-profile-balanced-symbolic'
  ;;
performance)
  decoration-lib power-saver
  swayosd-client --custom-message "Power Saver mode" --custom-icon 'power-profile-performance-symbolic'
  ;;
esac
