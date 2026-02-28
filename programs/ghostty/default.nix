{
  enable = true;
  settings = {
    font-family = "RobotoMono Nerd Font";
    font-size = 13;
    theme = "dark:OneHalfDarker,light:OneHalfLight";

    background-opacity = 0.9;

    window-padding-balance = true;
    window-padding-x = 6;
    window-padding-y = 6;
    window-theme = "system";
    gtk-titlebar = false;

    # cursor-style = "block";
    cursor-style-blink = true;
    # shell-integration-features = "no-cursor";
    mouse-hide-while-typing = true;
    clipboard-trim-trailing-spaces = true;

    image-storage-limit = 536870912;

    keybind = [
      "ctrl+h=goto_split:left"
      "ctrl+j=goto_split:bottom"
      "ctrl+k=goto_split:top"
      "ctrl+l=goto_split:right"
    ];

    window-save-state = "always";
  };

  themes = {
    OneHalfDarker = import ./themes/OneHalfDarker.nix;
    OneHalfLight = import ./themes/OneHalfLight.nix;
  };
}
