{
  Unit = {
    Description = "Battery alert notification";
    PartOf = [ "hyprland-session.target" ];
    After = [ "hyprland-session.target" ];
  };

  Timer = {
    OnBootSec = "10s";
    OnUnitActiveSec = "5s";
    Unit = "battery-alert.service";
  };

  Install.WantedBy = [ "hyprland-session.target" ];
}
