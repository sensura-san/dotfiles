{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

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

    oh-my-zsh = {
      enable = true;
    };

    # add homebrew to $PATH as nix-darwin homebrew setup does not do this automatically
    initContent = ''
      eval "$(/opt/homebrew/bin/brew shellenv)"
    '';
  };
}
