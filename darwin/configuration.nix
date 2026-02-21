{ config, pkgs, ... }:
{
  imports = [
    ./nix.nix
    ./modules/keymaps.nix
    ./modules/homebrew.nix
  ];

  system.stateVersion = 6;

  networking.hostName = "thermonuclear-kitty";
  networking.computerName = "thermonuclear-kitty";
  networking.localHostName = "thermonuclear-kitty";

  system.primaryUser = "ann";

  users.users.ann = {
    name = "ann";
    home = "/Users/ann";
  };

  # --- System-wide configuration here ---
  environment.systemPackages = with pkgs; [
    # adds binaries to $PATH
    git-filter-repo
    git-lfs
    cachix
    zoxide
    rclone
    fzf
    wget
    btop
    gh
    eza
    fastfetch
    nh
    lazygit
    ripgrep
    fd
  ];

  nixpkgs.config.allowUnfree = true;
  nix.package = pkgs.lixPackageSets.stable.lix; # NOTE: does not ensure consistency across packages, use overlay to wire Lix as dep, see https://lix.systems/add-to-config/
}
