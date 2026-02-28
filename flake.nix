{
  description = "Home Manager configuration of ishu";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    graphite.url = "github:GraphiteEditor/Graphite?dir=.nix";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    zen-browser.url = "github:youwen5/zen-browser-flake";
    zjstatus.url = "github:dj95/zjstatus";

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixos-hardware,
      ...
    }@inputs:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [ ./configuration.nix ];
      };
    };
}
