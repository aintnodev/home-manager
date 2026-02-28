{ pkgs, ... }:

{
  enable = true;
  defaultEditor = true;
  settings = {
    theme = "one_transparent";
    editor = {
      mouse = false;
      shell = [
        "fish"
        "-c"
      ];
      line-number = "relative";
      auto-format = true;
      completion-timeout = 5;
      color-modes = true;
      indent-guides.render = true;
      soft-wrap.enable = true;
      lsp.display-inlay-hints = false;
      cursor-shape.insert = "bar";
    };

    keys = import ./keymap.nix;
  };

  languages = import ./language.nix;
  extraPackages = import ./pkgs.nix pkgs;
  themes = {
    one_transparent = {
      inherits = "onedark";
      "ui.background" = { };
    };
  };
}
