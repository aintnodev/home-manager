{ inputs, pkgs, ... }:

{
  imports = [
    # Home modules
    ./modules/home

    # Hyprland
    ./modules/hyprland
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ishu";
  home.homeDirectory = "/home/ishu";
  home.stateVersion = "25.11";

  # Whether to enable GPU driver integration for non-NixOS systems.
  # targets.genericLinux.gpu.enable = true;

  # Whether to enable wl-clip-persist, a Wayland clipboard persistence tool.
  # services.wl-clip-persist.enable = true;

  # nixpkgs.overlays = [
  #   (import ./overlays/bitwig.nix)
  # ];

  # Whether to enable fontconfig configuration.
  fonts = import ./modules/home/fonts.nix;

  # Whether to enable management of XDG base directories.
  xdg = import ./modules/home/xdg.nix;

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages =
    (import ./pkgs/bin { inherit pkgs; })
    ++ (import ./pkgs/usr/cli.nix { inherit pkgs; })
    ++ (import ./pkgs/usr/dev.nix { inherit pkgs inputs; })
    ++ (import ./pkgs/usr/gui.nix { inherit pkgs inputs; });

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    ".config/macchina".source = ./programs/shell/macchina;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'.
  home.sessionVariables = {
    MANPAGER = "bat -plman";
  };

  programs = {
    ghostty = import ./programs/ghostty;
    onlyoffice = import ./programs/onlyoffice;
    vesktop = import ./programs/vesktop;
    zed-editor = import ./programs/zed;

    helix = import ./programs/shell/helix pkgs;
    yazi = import ./programs/shell/yazi pkgs;

    bat = import ./programs/shell/bat;
    btop = import ./programs/shell/btop;
    eza = import ./programs/shell/eza;
    fish = import ./programs/shell/fish;
    fzf = import ./programs/shell/fzf;
    git = import ./programs/shell/git;
    lazygit = import ./programs/shell/lazygit;
    navi = import ./programs/shell/navi;
    ripgrep = import ./programs/shell/ripgrep;
    tealdeer = import ./programs/shell/tealdeer;
    starship = import ./programs/shell/starship;
    yt-dlp = import ./programs/shell/yt-dlp;
    zellij = import ./programs/shell/zellij;
    zoxide = import ./programs/shell/zoxide;

    # Let Home Manager install and manage itself.
    home-manager.enable = true;
  };

  # Definition of systemd per-user service units
  systemd.user = {
    services.backup = import ./modules/systemd/backup/services.nix pkgs;
    timers.backup = import ./modules/systemd/backup/timers.nix;
  };
}
