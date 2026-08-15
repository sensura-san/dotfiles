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
      "vesktop"
      "spotify"
      "vivaldi"
      "whatsapp"
      "steam"
      "zoom"
      "obsidian"

      # dev tools
      "orbstack"
      "visual-studio-code"
      "waveforms"

      # other
      "affinity"
      "unnaturalscrollwheels"

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
