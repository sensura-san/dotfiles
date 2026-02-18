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
      "ghostty"
      "visual-studio-code"
      "orbstack"
      "spotify"
      "font-jetbrains-mono-nerd-font"
      "font-sf-mono"
      "font-sf-pro"
    ];
  };
}
