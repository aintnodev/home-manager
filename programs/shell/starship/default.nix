{
  enable = true;
  settings = {
    "$schema" = "https://starship.rs/config-schema.json";

    right_format = "$cmd_duration";
    add_newline = true;

    cmd_duration = {
      min_time = 1000;
      format = "took [$duration](bold yellow)";
      style = "bold yellow";
    };

    battery.display = [
      {
        threshold = 10;
        style = "bold red";
      }
      {
        threshold = 30;
        style = "bold yellow";
      }
    ];

    directory = {
      read_only = " 󰌾";
      style = "bold blue";
    };

    hostname = {
      disabled = false;
      ssh_symbol = " ";
    };

    memory_usage = {
      disabled = false;
      symbol = "󰍛 ";
    };

    java = {
      symbol = " ";
      style = "red";
    };

    azure.symbol = "󰠅 ";
    c.symbol = " ";
    cpp.symbol = " ";
    docker_context.symbol = " ";
    fossil_branch.symbol = " ";
    git_branch.symbol = " ";
    git_commit.tag_symbol = " ";
    golang.symbol = " ";
    hg_branch.symbol = " ";
    meson.symbol = "󰔷 ";
    nix_shell.symbol = "󱄅 ";
    nodejs.symbol = "󰎙 ";
    package.symbol = "󰏗 ";
    pijul_channel.symbol = " ";
    python.symbol = " ";
    rust.symbol = "󱘗 ";

    git_status = {
      conflicted = "=";
      ahead = "↑";
      behind = "↓";
      diverged = "⇕";
      untracked = "?";
      stashed = "\\$";
      modified = "!";
      staged = "+";
      renamed = "»";
      deleted = "×";
    };
  };
}
