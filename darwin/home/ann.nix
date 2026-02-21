{ pkgs, hostVars, ... }:
{
  # NOTE: Certain programmes have home-manager-specific configs, enabled via programs.<program>
  imports = [
    ./config.nix
    ./modules/fonts.nix
    ./modules/git.nix 
    ./modules/neovim.nix 
    ./modules/zsh.nix 
    ./modules/lazygit.nix

    # vanity
    ./modules/hyfetch.nix
    ./modules/fastfetch.nix
  ];

  home.stateVersion = hostVars.homeManagerStateVersion;
  home.username = hostVars.userName;
  home.homeDirectory = "${hostVars.homePrefix}/${hostVars.userName}";

  # User-level packages installed to ~/.nix-profile/
  home.packages = with pkgs; [
    neovide
    nodejs
    stylua
    nixd
    nixfmt
  ];

  programs.home-manager.enable = true;
}
