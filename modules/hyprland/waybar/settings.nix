{
  layer = "top";
  height = 32;
  spacing = 2;
  margin = "4 4 0 4";
  reload_style_on_change = true;

  modules-left = [ "hyprland/workspaces" ];
  modules-center = [ "clock" ];
  modules-right = [
    "tray"
    "custom/kanata"
    "idle_inhibitor"
    "wireplumber"
    "network"
    "bluetooth"
    "custom/notifications"
    "battery"
  ];

  clock = {
    format = "{:%d %b, %H:%M}";
    tooltip-format = "{:%A; %B %d, %Y}";
  };

  battery = {
    interval = 60;
    states = {
      warning = 30;
      critical = 20;
    };
    format = "{icon} <span font-size='85%' rise='800'>{capacity}%</span>";
    format-icons.default = [
      "󰂎"
      "󰁺"
      "󰁻"
      "󰁼"
      "󰁽"
      "󰁾"
      "󰁿"
      "󰂀"
      "󰂁"
      "󰂂"
      "󰁹"
    ];
    format-charging = "󰂄 <span font-size='85%' rise='800'>{capacity}%</span>";
    format-warning = "󰂃 <span font-size='85%' rise='800'>{capacity}%</span>";
    tooltip-format = "{timeTo}";
    max-length = 25;
    on-click = "powerprofile-cycle";
    on-scroll-up = "swayosd-client --brightness raise";
    on-scroll-down = "swayosd-client --brightness lower";
  };

  bluetooth = {
    format = "󰂯";
    format-off = "󰂲";
    format-connected = "󰂱";
    tooltip-format = "{controller_alias}\t{controller_address}";
    tooltip-format-connected = "{device_enumerate}";
    tooltip-format-enumerate-connected = "{device_alias}\t{device_battery_percentage}%";
    on-click = "vicinae vicinae://extensions/Gelei/bluetooth/scan";
    on-click-middle = "bluetooth-toggle";
  };

  "hyprland/window" = {
    separate-outputs = true;
    max-length = 50;
  };

  "hyprland/workspaces" = {
    persistent-workspaces = {
      "*" = 6;
    };
  };

  idle_inhibitor = {
    format = "{icon}";
    format-icons = {
      activated = "󰅶";
      deactivated = "󰾪";
    };
    tooltip-format-activated = "Caffeine mode {status}";
    tooltip-format-deactivated = "Caffeine mode {status}";
  };

  network = {
    interface = "wlp2s0";
    format = "󰤭";
    format-wifi = "{icon}";
    format-ethernet = "󰈀 {ipaddr}/{cidr}";
    format-disconnected = "󰤠";
    tooltip-format = "{ifname} via {gwaddr}";
    tooltip-format-wifi = "{essid}\t{signalStrength}%";
    tooltip-format-ethernet = "{ifname}";
    tooltip-format-disconnected = "Disconnected";
    format-icons = [
      "󰤯"
      "󰤟"
      "󰤢"
      "󰤥"
      "󰤨"
    ];
    max-length = 50;
    on-click = "vicinae vicinae://extensions/dagimg-dot/wifi-commander/scan-wifi";
    on-click-middle = "network-toggle";
  };

  tray = {
    icon-size = 14;
    spacing = 10;
  };

  wireplumber = {
    format = "{icon}";
    format-muted = "󰖁";
    format-icons = {
      default = [
        ""
        ""
        "󰕾"
      ];
    };
    max-volume = 100;
    scroll-step = 1;
    tooltip-format = "{node_name}\t{volume}%";
    on-click = "swayosd-client --output-volume mute-toggle";
    on-click-middle = "easyeffects";
    on-click-right = "pwvucontrol";
    on-scroll-up = "swayosd-client  --output-volume raise";
    on-scroll-down = "swayosd-client  --output-volume lower";
  };

  "custom/notifications" = {
    format = "󰂚";
    tooltip = false;
    on-click = "swaync-client -t";
  };

  "custom/kanata" = {
    exec = "kanata-status";
    return-type = "json";
    interval = 1;
    on-click = "kanata-toggle";
  };
}
