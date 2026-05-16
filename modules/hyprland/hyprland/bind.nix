{
  bind = [
    # Example binds, see https://wiki.hypr.land/Configuring/Binds/ for more
    "SUPER, RETURN, exec, $terminal"
    "SUPER, B, exec, $browser"
    "SUPER, Q, killactive,"
    "SUPER, M, fullscreen,"
    "SUPER, G, togglefloating,"
    "SUPER, P, pseudo,"
    "SUPER, T, togglesplit,"
    "SUPER, C, exec, hyprpicker -a"
    "SUPER, W, exec, hyprpaper-picker"
    "SUPER, V, exec, vicinae vicinae://extensions/vicinae/clipboard/history"
    "SUPER, PERIOD, exec, vicinae vicinae://extensions/vicinae/core/search-emojis"
    "SUPER, COMMA, exec, vicinae vicinae://extensions/josephschmitt/gif-search/search"
    "SUPER, SLASH, exec, vicinae vicinae://toggle"
    "SUPER, ESCAPE, exec, loginctl lock-session"

    "SUPER, PRINT, exec, hyprshot -m window"
    ", PRINT, exec, hyprshot -m output"
    "SHIFT, PRINT, exec, hyprshot -m region"

    ", Caps_Lock, exec, swayosd-client --caps-lock"
    ", Num_Lock, exec, swayosd-client --num-lock"
    ", Scroll_Lock, exec, swayosd-client --scroll-lock"

    # Move focus with SUPER + hjkl keys
    "SUPER, h, movefocus, l"
    "SUPER, l, movefocus, r"
    "SUPER, k, movefocus, u"
    "SUPER, j, movefocus, d"

    # Swap windows with SUPER SHIFT + hjkl keys
    "SUPER SHIFT, h, swapwindow, l"
    "SUPER SHIFT, l, swapwindow, r"
    "SUPER SHIFT, k, swapwindow, u"
    "SUPER SHIFT, j, swapwindow, d"

    # Switch workspaces with SUPER + [0-9]
    "SUPER, 1, workspace, 1"
    "SUPER, 2, workspace, 2"
    "SUPER, 3, workspace, 3"
    "SUPER, 4, workspace, 4"
    "SUPER, 5, workspace, 5"
    "SUPER, 6, workspace, 6"
    "SUPER, 7, workspace, 7"
    "SUPER, 8, workspace, 8"
    "SUPER, 9, workspace, 9"
    "SUPER, 0, workspace, 10"

    # Move active window to a workspace with SUPER + SHIFT + [0-9]
    "SUPER SHIFT, 1, movetoworkspace, 1"
    "SUPER SHIFT, 2, movetoworkspace, 2"
    "SUPER SHIFT, 3, movetoworkspace, 3"
    "SUPER SHIFT, 4, movetoworkspace, 4"
    "SUPER SHIFT, 5, movetoworkspace, 5"
    "SUPER SHIFT, 6, movetoworkspace, 6"
    "SUPER SHIFT, 7, movetoworkspace, 7"
    "SUPER SHIFT, 8, movetoworkspace, 8"
    "SUPER SHIFT, 9, movetoworkspace, 9"
    "SUPER SHIFT, 0, movetoworkspace, 10"

    # Example special workspace (scratchpad)
    "SUPER, S, togglespecialworkspace, magic"
    "SUPER SHIFT, S, movetoworkspace, special:magic"

    # Scroll through existing workspaces withSUPER + scroll
    "SUPER, mouse_down, workspace, e+1"
    "SUPER, mouse_up, workspace, e-1"
  ];
}
