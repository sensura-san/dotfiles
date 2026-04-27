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

      # dev tools
      "orbstack"
      "visual-studio-code"

      # fonts
      "font-sf-mono"
      "font-sf-pro"
      "font-jetbrains-mono-nerd-font"
      "font-suse"
      "font-hanken-grotesk"
    ];
    masApps = {
      # Add App Store apps here if needed
      # "App Name" = app_id;
    };
  };
}
