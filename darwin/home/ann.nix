{ pkgs, ... }:
{
  # NOTE: Certain programmes have home-manager-specific configs, enabled via programs.<program>
  imports = [
    ./config.nix
    ./modules/fonts.nix
    ./modules/git.nix 
    ./modules/neovim.nix 
    ./modules/zsh.nix 
    ./modules/lazygit.nix
  ];

  home.stateVersion = "26.05";
  home.username = "ann";
  home.homeDirectory = "/Users/ann";

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
