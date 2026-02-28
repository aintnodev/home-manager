pkgs: {
  Unit.Description = "My daily local backup";
  Service.ExecStart = "${pkgs.writeShellScriptBin "backup-archive" (
    builtins.readFile ./backup_archive.sh
  )}";
}
