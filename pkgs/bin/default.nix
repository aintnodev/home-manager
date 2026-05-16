{ pkgs, ... }:

with pkgs;
[
  # zed
  (writeShellScriptBin "code-runner" (builtins.readFile ./code_runner.sh))

  # systemd
  # (writeShellScriptBin "backup-archive" (builtins.readFile ./backup_archive.sh))

  # hypr
  (writeShellScriptBin "decoration-lib" (builtins.readFile ./hypr/decoration_lib.sh))
  (writeShellScriptBin "confirm-logout" (builtins.readFile ./hypr/confirm_logout.sh))
  (writeShellScriptBin "hyprpaper-picker" (builtins.readFile ./hypr/hyprpaper_picker.sh))
  (writeShellScriptBin "powerprofile-cycle" (builtins.readFile ./hypr/powerprofile_cycle.sh))

  (writeShellScriptBin "bluetooth-toggle" (builtins.readFile ./hypr/waybar/bluetooth_toggle.sh))
  (writeShellScriptBin "network-toggle" (builtins.readFile ./hypr/waybar/network_toggle.sh))
  (writeShellScriptBin "kanata-status" (builtins.readFile ./hypr/waybar/kanata_status.sh))
  (writeShellScriptBin "kanata-toggle" (builtins.readFile ./hypr/waybar/kanata_toggle.sh))
]
