{
  "$schema" = "/etc/xdg/swaync/configSchema.json";
  positionX = "right";
  positionY = "top";
  layer = "overlay";
  control-center-layer = "top";
  layer-shell = true;
  layer-shell-cover-screen = false;
  cssPriority = "application";
  control-center-margin-top = 4;
  control-center-margin-bottom = 4;
  control-center-margin-right = 4;
  control-center-margin-left = 4;
  notification-2fa-action = true;
  notification-inline-replies = true;
  notification-icon-size = 32;
  notification-body-image-height = 100;
  notification-body-image-width = 200;
  timeout = 5;
  timeout-low = 3;
  timeout-critical = 0;
  fit-to-screen = true;
  relative-timestamps = true;
  control-center-width = 400;
  control-center-height = 600;
  notification-window-width = 400;
  keyboard-shortcuts = true;
  image-visibility = "when-available";
  transition-time = 200;
  hide-on-clear = false;
  hide-on-action = true;
  text-empty = "No Notifications";
  script-fail-notify = true;
  widgets = [
    "title"
    "dnd"
    "notifications"
    "buttons-grid"
  ];
  widget-config = {
    title = {
      text = "Notifications";
      clear-all-button = true;
      button-text = "CLR";
    };
    dnd = {
      text = "Do Not Disturb";
    };
    buttons-grid = {
      actions = [
        {
          label = "󰐥";
          command = "confirm-logout shutdown";
        }
        {
          label = "󰜉";
          command = "confirm-logout reboot";
        }
        {
          label = "󰌾";
          command = "loginctl lock-session";
        }
        {
          label = "󰍃";
          command = "confirm-logout logout";
        }
        {
          label = "󰤄";
          command = "systemctl suspend";
        }
        {
          label = "󱐋";
          command = "powerprofile-cycle";
        }
      ];
    };
  };
}
