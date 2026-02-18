{ config, pkgs, ... }:
# FIXME: separate out configs for diff. apps to ./config (lazy rn)
# FIXME: chatgpt slop idk whats going on im eepy

{
  imports = [ ];

  # FIXME: what (esp home.username fix)
  home.stateVersion = "23.11";
  home.username = "ann";
  home.homeDirectory = "/Users/ann";

  # User-level packages installed to ~/.nix-profile/
  home.packages = with pkgs; [
    neovide
    ripgrep
    fd       # fast file finder
    fzf      # fuzzy finder
    nodejs   # many LSP servers / formatters depend on Node
    stylua   # Lua formatter (for Neovim configs)
    htop tldr tree
  ];

  # If you still want to place some custom files (normal config files permitted)
  # home.file can link additional lua files or overrides without breaking the Nix approach
  home.file = { };

  programs = {
    neovim.enable = true;
    zsh.enable = true;
    git = {
      enable = true;
      settings = {
        user.name  = "sensura-san";
        user.email = "gohzhixuan2006@gmail.com";
        init.defaultBranch = "main";
        pull.rebase = true;
        core.editor = "nvim";
      };
    };
  };

  programs.home-manager.enable = true;
}
