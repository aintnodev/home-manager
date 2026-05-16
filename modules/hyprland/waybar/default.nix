{
  enable = true;
  settings.mainBar = import ./settings.nix;
  style = builtins.readFile ./style.css;
}
