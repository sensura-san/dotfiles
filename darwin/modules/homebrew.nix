{
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    brews = [
      "mas"
      "spicetify-cli"
    ];
    casks = [
      # general
      "discord"
      "spotify"
      "vivaldi"

      # terminal
      # "ghostty"  # in nixpkgs (configuration.nix)

      # IDEs
      "visual-studio-code"

      # dev tools
      "orbstack"

      # fonts
      "font-sf-mono"
      "font-sf-pro"
      "font-jetbrains-mono-nerd-font"
      "font-suse"
      "font-hanken-grotesk"
    ];
  };
}
