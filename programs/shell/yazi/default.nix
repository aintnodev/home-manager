{ pkgs, ... }:

{
  enable = true;
  shellWrapperName = "yy";
  settings = import ./settings.nix;
  initLua = ./init.lua;

  extraPackages = with pkgs; [
    fd
    hexyl
    jq
    p7zip
    poppler-utils
  ];

  plugins = {
    full-border = pkgs.yaziPlugins.full-border;
    piper = pkgs.yaziPlugins.piper;
    yatline = pkgs.yaziPlugins.yatline;
  };

  flavors = {
    light = ./flavors/light.yazi;
    dark = ./flavors/dark.yazi;
  };

  theme = {
    flavor = {
      light = "light";
      dark = "dark";
    };
  };

  keymap = {
    mgr.prepend_keymap = [
      {
        on = "y";
        run = [
          "shell -- for path in '$@'; do echo 'file://$path'; done | wl-copy -t text/uri-list"
          "yank"
        ];
      }
    ];
  };
}
