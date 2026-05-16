pkgs: {
  Unit = {
    Description = "Battery alert notification";
    PartOf = [ "hyprland-session.target" ];
    After = [ "hyprland-session.target" ];
  };

  Service = {
    Type = "oneshot";
    ExecStart = "${pkgs.writeShellScriptBin "battery-alert" (builtins.readFile ./battery_alert.sh)}/bin/battery-alert";
  };
}
