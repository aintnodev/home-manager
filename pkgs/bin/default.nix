{ pkgs, ... }:

with pkgs;
[
  # zed
  (writeShellScriptBin "code-runner" (builtins.readFile ./code_runner.sh))

  # hypr
  (writeShellScriptBin "battery-alert" (builtins.readFile ./battery_alert.sh))
  (writeShellScriptBin "confirm-cmd" (builtins.readFile ./confirm_cmd.sh))
  (writeShellScriptBin "powerprofile-cycle" (builtins.readFile ./powerprofile_cycle.sh))

  # systemd
  (writeShellScriptBin "backup-archive" (builtins.readFile ./backup_archive.sh))
]
