{ inputs, ... }:

{
  imports = [ inputs.noctalia.homeModules.default ];

  wayland.windowManager.hyprland = import ./hyprland;

  home.file.".config/swayosd/style.css".source = ./swayosd/style.css;

  services = {
    hyprpolkitagent.enable = true;
    hyprpaper = import ./hyprpaper;
    hyprsunset = import ./hyprsunset;
    hypridle = import ./hypridle;
    swaync = import ./swaync;
    swayosd = import ./swayosd;
  };

  programs = {
    hyprshot.enable = true;
    waybar = import ./waybar;
    vicinae = import ./vicinae;
    hyprlock = import ./hyprlock;
  };
}
