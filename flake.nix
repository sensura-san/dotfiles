{
  description = "macOS Lix configuration w/ nix-darwin, homebrew, & home-manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stable.url = "github:NixOS/nixpkgs/nixos-25.05"; # NOTE: unused

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nix-darwin, home-manager, ... }@inputs:
    let
      vars = import ./vars.nix;
    in
    {
      darwinConfigurations.${vars.darwin.hostName} = nix-darwin.lib.darwinSystem {
        system = vars.darwin.system;
        specialArgs = {
          hostVars = vars.darwin;
          inherit inputs;
        };
        modules = [
          ./darwin/configuration.nix

          home-manager.darwinModules.home-manager
          { nixpkgs.config.allowUnfree = true; }
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = {
                hostVars = vars.darwin;
                inherit inputs;
              };
              users.${vars.darwin.userName} = import ./darwin/home/ann.nix;
            };
          }
        ];
      };
    };
}
