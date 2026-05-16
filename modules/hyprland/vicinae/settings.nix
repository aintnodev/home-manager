{
  escape_key_behavior = "close_window";
  pop_on_backspace = true;
  close_on_focus_loss = false;
  pop_to_root_on_close = true;

  theme = {
    light = {
      name = "vicinae-light";
      icon_theme = "auto";
    };
    dark = {
      name = "vicinae-dark";
      icon_theme = "auto";
    };
  };

  launcher_window = {
    opacity = 0.7;
    dim_around = true;
    client_side_decorations = {
      enabled = true;
      rounding = 6;
      border_width = 1;
    };

    compact_mode.enabled = false;
    layer_shell.keyboard_interactivity = "exclusive";

  };

  pixmap_cache_mb = 64;
  favorites = [ "clipboard=history" ];
  fallbacks = [ "files=search" ];
}
