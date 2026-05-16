{
  enable = true;
  systemd.enable = true;
  package = null;
  portalPackage = null;
  settings = import ./settings.nix;
  configType = "hyprlang";
}
