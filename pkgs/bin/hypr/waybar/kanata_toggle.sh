#!/bin/sh

notify() {
  notify-send "Kanata" "$1" \
    -i "input-keyboard" \
    -h int:transient:1 \
    -h string:x-canonical-private-synchronous:kanatatoggle
}

KANATA_STATUS=$(systemctl is-active kanata-kbd.service)

if [ "$KANATA_STATUS" = "active" ]; then
  res=$(systemctl stop kanata-kbd.service)
  SUCCESS="Stopped kanata.service."
  FAIL="Cannot stop kanata.service."
else
  res=$(systemctl start kanata-kbd.service)
  SUCCESS="Started kanata.service."
  FAIL="Cannot start kanata.service."
fi

if [ "$res" -eq 0 ]; then
  notify "$SUCCESS"
else
  notify "$FAIL"
fi
