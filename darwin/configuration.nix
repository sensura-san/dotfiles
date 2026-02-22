{ pkgs, hostVars, ... }:
{
  imports = [
    ./nix.nix
    ./modules/keymaps.nix
    ./modules/sudo.nix
    ./modules/homebrew.nix
  ];

  system.stateVersion = hostVars.stateVersion;

  networking.hostName = hostVars.hostName;
  networking.computerName = hostVars.hostName;
  networking.localHostName = hostVars.hostName;

  system.primaryUser = hostVars.userName;

  # NOTE: for nix-darwin build
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
    fzf
    wget
    btop
    gh
    eza
    fastfetch
    nh
    ripgrep
    fd
  ];

  nix.package = pkgs.lixPackageSets.stable.lix; # NOTE: does not ensure consistency across packages, use overlay to wire Lix as dep, see https://lix.systems/add-to-config/
}
