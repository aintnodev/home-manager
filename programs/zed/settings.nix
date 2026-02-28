{
  agent = {
    default_model = {
      provider = "copilot_chat";
      model = "gpt-5-mini";
    };
  };

  helix_mode = true;
  redact_private_values = true;

  ui_font_size = 16;
  buffer_font_size = 16;
  buffer_font_family = "Roboto Mono";
  soft_wrap = "preferred_line_length";

  vim = {
    toggle_relative_line_numbers = true;
    use_smartcase_find = true;
    use_system_clipboard = "on_yank";
  };

  theme = {
    mode = "system";
    light = "One Light";
    dark = "One Dark";
  };

  terminal = {
    "font_family" = "RobotoMono Nerd Font";
  };

  edit_predictions = {
    disabled_globs = [
      "**/.env*"
      "**/*.pem"
      "**/*.key"
      "**/*.cert"
      "**/*.crt"
      "**/secrets.yml"
    ];
    mode = "eager";
  };

  features = {
    "edit_prediction_provider" = "zed";
  };
}
