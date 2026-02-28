# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, pkgs, ... }:

{
  imports = with inputs; [
    # Include the results of the hardware scan.
    ./hosts/latitude-5490/hardware-configuration.nix

    # Optimize settings for different hardware.
    nixos-hardware.nixosModules.dell-latitude-5490

    # Other NixOS modules.
    home-manager.nixosModules.default
    nix-flatpak.nixosModules.nix-flatpak
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # The font used for the virtual consoles.
  console.packages = [ pkgs.terminus_font ];
  console.font = "ter-u32b";

  # Enable graphical boot animation
  boot.plymouth.enable = true;
  boot.kernelParams = [
    "quiet"
    "splash"
  ];

  # Creates a zram block device and uses it as a swap device
  zramSwap.enable = true;

  # Define your hostname.
  networking.hostName = "nixos";

  # Enables wireless support via wpa_supplicant.
  # networking.wireless.enable = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n = {
    defaultLocale = "en_IN";
    extraLocaleSettings = {
      LC_ADDRESS = "en_IN";
      LC_IDENTIFICATION = "en_IN";
      LC_MEASUREMENT = "en_IN";
      LC_MONETARY = "en_IN";
      LC_NAME = "en_IN";
      LC_NUMERIC = "en_IN";
      LC_PAPER = "en_IN";
      LC_TELEPHONE = "en_IN";
      LC_TIME = "en_IN";
    };
  };

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  # services.xserver.enable = true;

  # Enable fwupd to update firmware.
  services.fwupd.enable = true;

  # Enable the COSMIC desktop environment.
  services.displayManager.cosmic-greeter.enable = true;
  services.desktopManager.cosmic.enable = true;
  services.system76-scheduler.enable = true;
  environment.sessionVariables.COSMIC_DATA_CONTROL_ENABLED = 1;

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  # Configure keymap in X11.
  services.xserver.xkb.layout = "us";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Install fonts.
  fonts.packages = import ./pkgs/fonts.nix pkgs;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = import ./modules/nixos/audio.nix;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ishu = {
    isNormalUser = true;
    description = "Ishaan";
    shell = pkgs.fish;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  services.flatpak = {
    enable = true;
    packages = import ./pkgs/flatpak.nix;
  };

  # Allow unfree packages
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      "beekeeper-studio-5.5.5"
    ];
  };

  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [ wl-clipboard ];

  # Enable fish shell
  programs.fish.enable = true;

  # Fix uv's dynamically linked executables error
  programs.nix-ld.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:
  services.kanata = {
    enable = true;
    keyboards.kbd = {
      devices = [ "/dev/input/by-path/platform-i8042-serio-0-event-kbd" ];
      config = builtins.readFile ./programs/services/kanata/config.kbd;
    };
  };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.ishu = ./home.nix;

    # Optionally use extraSpecialArgs
    # to pass through arguments to home.nix
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "bckp";
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
