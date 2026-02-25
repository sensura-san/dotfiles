{
  programs.zsh = {
    enable = true;
    shellAliases = {
      # https://home-manager.dev/manual/25.05/options.xhtml#opt-programs.zsh.shellAliases
      l = "eza -F";
      ls = "eza";
      la = "eza -a"; # same as eza -A
      ll = "eza -alF";

      ".." = "cd ..";

      v = "nvim";
      vi = "nvim";
      vim = "nvim";
    };
  };
}
