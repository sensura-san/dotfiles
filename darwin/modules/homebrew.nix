{
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };

    brews = [
      "mas"
      "spicetify-cli"
      "openconnect" # open-source client for cisco secure client (NOTE: doesnt work nus vpn :/)
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
      "microsoft-word"
      "microsoft-excel"
      "pinta" # like paint.net

      # dev tools
      "orbstack"
      "visual-studio-code"
      "arduino-ide"

      # other
      "affinity"
      "vorssaint"

      # fonts
      "font-sf-mono"
      "font-sf-pro"
      "font-jetbrains-mono-nerd-font"
      "font-suse"
      "font-hanken-grotesk"
    ];
    masApps = {
      # Noteful = 1587904334;
    };
  };
}
