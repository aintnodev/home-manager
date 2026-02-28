{ inputs, ... }:

{
  imports = [ inputs.noctalia.homeModules.default ];

  wayland.windowManager.hyprland = import ./hyprland;

  services.hyprpolkitagent.enable = true;

  programs = {
    noctalia-shell = import ./noctalia;
    vicinae = import ./vicinae;
    hyprshot.enable = true;
    hyprlock.enable = true;
  };
}
