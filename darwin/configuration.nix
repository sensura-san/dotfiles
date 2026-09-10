{ pkgs, hostVars, ... }:
{
  imports = [
    ./nix.nix
    ./modules/mac-settings.nix
    ./modules/keymaps.nix
    ./modules/homebrew.nix
    ./modules/mas.nix
    ./modules/aerospace.nix
    ./modules/tmux.nix
    ./modules/tailscale.nix
  ];

  system.stateVersion = hostVars.stateVersion;

  networking.hostName = hostVars.hostName;
  networking.computerName = hostVars.hostName;
  networking.localHostName = hostVars.hostName;

  system.primaryUser = hostVars.userName;

  # NOTE: for nix-darwin build to work
  users.users.${hostVars.userName} = {
    name = hostVars.userName;
    home = "${hostVars.homePrefix}/${hostVars.userName}";
  };

  # --- System-wide packages here ---
  environment.systemPackages = with pkgs; [
    # adds binaries to $PATH
    git-filter-repo
    git-lfs
    cachix
    zoxide
    rclone
    wget
    btop
    gh
    eza
    fastfetch
    nh
    ripgrep
    fd
    ghostty-bin
  ];

  nix.package = pkgs.lixPackageSets.stable.lix; # NOTE: does not ensure consistency across packages, use overlay to wire Lix as dep, see https://lix.systems/add-to-config/
}
