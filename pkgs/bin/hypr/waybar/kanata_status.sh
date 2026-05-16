#!/bin/sh

STATUS=$(systemctl is-active kanata-kbd.service)

if [ "$STATUS" = "active" ]; then
  echo '{"text": "󰌌", "tooltip": "Kanata is running"}'
else
  echo '{"text": "󰌐", "tooltip": "Kanata is stopped", "class": "inactive"}'
fi
