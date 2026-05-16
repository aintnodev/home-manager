{
  enable = true;
  settings = {
    "$font" = "Sans";

    general = {
      hide_cursor = false;
      fail_timeout = 250;
    };

    # uncomment to enable fingerprint authentication
    # auth = {
    #   fingerprint = {
    #     enabled = true;
    #     ready_message = "Scan fingerprint to unlock";
    #     present_message = "Scanning...";
    #     retry_delay = 250; # in milliseconds
    #   };
    # };

    animations = {
      enabled = true;
      bezier = "linear, 1, 1, 0, 0";
      animation = [
        "fadeIn, 1, 2, linear"
        "fadeOut, 1, 2, linear"
        "inputFieldDots, 1, 2, linear"
      ];
    };

    background = {
      path = "~/Pictures/Walls/Abstract/nerd-room-dim.png";
      blur_size = 8;
      blur_passes = 3;
      brightness = 0.7173;
    };

    # INPUT
    input-field = {
      size = "20%, 5%";
      outline_thickness = 2;
      inner_color = "rgba(00000000)";

      outer_color = "rgba(61afefee)";
      check_color = "rgba(98c379ee)";
      fail_color = "rgba(e06c75ee)";

      font_color = "rgba(abb2bfee)";
      fade_on_empty = false;
      rounding = 4;

      font_family = "$font";
      placeholder_text = "Input password...";
      fail_text = "$PAMFAIL";

      # dots_text_format = "*";
      # dots_size = 0.4;
      dots_spacing = 0.3;

      # uncomment to use an input indicator that does not show the password length (similar to swaylock's input indicator)
      # hide_input = true;

      position = "0, -90";
      halign = "center";
      valign = "center";
    };

    label = [
      # TIME
      {
        text = "$TIME";
        font_size = 120;
        font_family = "$font Bold";

        position = "0, 90";
        halign = "center";
        valign = "center";
      }

      # DATE
      {
        text = "cmd[update:60000] date +'%A, %d %B %Y'";
        font_size = 24;
        font_family = "$font SemiBold";

        position = "0, -15";
        halign = "center";
        valign = "center";
      }

      # LAYOUT
      {
        text = "$LAYOUT[en,hi]";
        font_size = 16;
        onclick = "hyprctl switchxkblayout all next";

        position = "-15, 15";
        halign = "right";
        valign = "bottom";
      }
    ];
  };
}
