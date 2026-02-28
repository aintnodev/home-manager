{
  # This is an example Hyprland config file for Nix.
  # Refer to the wiki for more information.
  # https://wiki.hypr.land/Configuring/
  # https://wiki.hypr.land/Nix/
  # https://wiki.hypr.land/Nix/Hyprland-on-NixOS/
  # https://wiki.hypr.land/Nix/Hyprland-on-Home-Manager/

  # Please note not all available settings / options are set here.
  # For a full list, see the wiki

  ################
  ### MONITORS ###
  ################

  # See https://wiki.hypr.land/Configuring/Monitors/
  monitor = ", preferred, auto, 1.33";

  ###################
  ### MY PROGRAMS ###
  ###################

  # See https://wiki.hypr.land/Configuring/Keywords/
  "$browser" = "zen";
  "$terminal" = "ghostty";
  "$menu" = "vicinae";

  #################
  ### AUTOSTART ###
  #################

  # Autostart necessary processes (like notifications daemons, status bars, etc.)
  # Or execute your favorite apps at launch like this:

  "exec-once" = [
    "noctalia-shell"
    "vicinae server"
  ];

  #############################
  ### ENVIRONMENT VARIABLES ###
  #############################

  # See https://wiki.hypr.land/Configuring/Environment-variables/

  env = [
    "XCURSOR_SIZE,24"
    "HYPRCURSOR_SIZE,24"
  ];

  ###################
  ### PERMISSIONS ###
  ###################

  # See https://wiki.hypr.land/Configuring/Permissions/
  # Please note permission changes here require a Hyprland restart and are not applied on-the-fly
  # for security reasons

  # ecosystem = {
  #   enforce_permissions = 1;
  # };

  # permission = [
  #   "/usr/(bin|local/bin)/grim, screencopy, allow"
  #   "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland, screencopy, allow"
  #   "/usr/(bin|local/bin)/hyprpm, plugin, allow"
  # ];

  #####################
  ### LOOK AND FEEL ###
  #####################

  # Refer to https://wiki.hypr.land/Configuring/Variables/

  # https://wiki.hypr.land/Configuring/Variables/#general
  general = {
    gaps_in = 2;
    gaps_out = 4;

    border_size = 0;

    # Set to true enable resizing windows by clicking and dragging on borders and gaps
    resize_on_border = true;

    # Please see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
    allow_tearing = false;

    layout = "dwindle";
  };

  # https://wiki.hypr.land/Configuring/Variables/#decoration
  decoration = {
    rounding = 4;
    rounding_power = 2;

    # Change transparency of focused and unfocused windows
    active_opacity = 1.0;
    inactive_opacity = 1.0;

    dim_inactive = true;
    dim_strength = 0.2;

    shadow = {
      enabled = false;
      range = 4;
      render_power = 3;
      color = "rgba(1a1a1aee)";
    };

    # https://wiki.hypr.land/Configuring/Variables/#blur
    blur = {
      enabled = false;
      size = 3;
      passes = 1;

      vibrancy = 0.1696;
    };
  };

  # https://wiki.hypr.land/Configuring/Variables/#animations
  animations = {
    enabled = "yes, please :)";

    # Default animations, see https://wiki.hypr.land/Configuring/Animations/ for more

    bezier = [
      "easeOutQuint, 0.23, 1, 0.32, 1"
      "easeInOutCubic, 0.65, 0.05, 0.36, 1"
      "linear, 0, 0, 1, 1"
      "almostLinear, 0.5, 0.5, 0.75, 1.0"
      "quick, 0.15, 0, 0.1, 1"
    ];

    animation = [
      "global, 1, 10, default"
      "border, 1, 5.39, easeOutQuint"
      "windows, 1, 4.79, easeOutQuint"
      "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
      "windowsOut, 1, 1.49, linear, popin 87%"
      "fadeIn, 1, 1.73, almostLinear"
      "fadeOut, 1, 1.46, almostLinear"
      "fade, 1, 3.03, quick"
      "layers, 1, 3.81, easeOutQuint"
      "layersIn, 1, 4, easeOutQuint, fade"
      "layersOut, 1, 1.5, linear, fade"
      "fadeLayersIn, 1, 1.79, almostLinear"
      "fadeLayersOut, 1, 1.39, almostLinear"
      "workspaces, 1, 1.94, almostLinear, fade"
      "workspacesIn, 1, 1.21, almostLinear, fade"
      "workspacesOut, 1, 1.94, almostLinear, fade"
      "zoomFactor, 1, 7, quick"
    ];
  };

  # Ref https://wiki.hypr.land/Configuring/Workspace-Rules/
  # "Smart gaps" / "No gaps when only"
  # uncomment all if you wish to use that.
  # workspace = [
  #   "w[tv1], gapsout:0, gapsin:0"
  #   "f[1], gapsout:0, gapsin:0"
  # ];
  # windowrule = [
  #   "bordersize 0, floating:0, onworkspace:w[tv1]"
  #   "rounding 0, floating:0, onworkspace:w[tv1]"
  #   "bordersize 0, floating:0, onworkspace:f[1]"
  #   "rounding 0, floating:0, onworkspace:f[1]"
  # ];

  # See https://wiki.hypr.land/Configuring/Dwindle-Layout/ for more
  dwindle = {
    pseudotile = true;
    preserve_split = true;
  };

  # See https://wiki.hypr.land/Configuring/Master-Layout/ for more
  master = {
    new_status = "master";
  };

  # https://wiki.hypr.land/Configuring/Variables/#misc
  misc = {
    force_default_wallpaper = 0;
    disable_hyprland_logo = true;
  };

  #############
  ### INPUT ###
  #############

  # https://wiki.hypr.land/Configuring/Variables/#input
  input = {
    kb_layout = "us";
    kb_variant = "";
    kb_model = "";
    kb_options = "";
    kb_rules = "";

    follow_mouse = 1;

    sensitivity = 0;

    touchpad = {
      natural_scroll = true;
    };
  };

  # https://wiki.hypr.land/Configuring/Variables/#gestures
  # gestures = {
  #   workspace_swipe = false;
  # };

  # Example per-device config
  # See https://wiki.hypr.land/Configuring/Keywords/#per-device-input-configs for more
  # device = {
  #   name = "epic-mouse-v1";
  #   sensitivity = -0.5;
  # };

  ###################
  ### KEYBINDINGS ###
  ###################

  # See https://wiki.hypr.land/Configuring/Keywords/
  bind = import ./bind.nix;

  # Move/resize windows with SUPER + LMB/RMB and dragging
  bindm = [
    "SUPER, mouse:272, movewindow"
    "SUPER, mouse:273, resizewindow"
  ];

  # Laptop multimedia keys for volume and LCD brightness
  bindel = [
    ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
    ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
    ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
    ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
  ];

  # Requires playerctl
  bindl = [
    ", XF86AudioNext, exec, playerctl next"
    ", XF86AudioPause, exec, playerctl play-pause"
    ", XF86AudioPlay, exec, playerctl play-pause"
    ", XF86AudioPrev, exec, playerctl previous"
  ];

  ##############################
  ### WINDOWS AND WORKSPACES ###
  ##############################

  # See https://wiki.hypr.land/Configuring/Window-Rules/ for more
  # See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

  windowrule = [
    # Example windowrule
    # "float,class:^(kitty)$,title:^(kitty)$"

    # Ignore maximize requests from apps. You'll probably like this.
    # "suppressevent maximize, class:.*"

    # Fix some dragging issues with XWayland
    # "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
  ];
}
