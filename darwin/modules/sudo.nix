{
  # nix-darwin: enable touch ID for sudo in sudo_local
  # https://nix-darwin.github.io/nix-darwin/manual/#opt-security.pam.services.sudo_local.touchIdAuth
  security.pam.services.sudo_local.touchIdAuth = true;
}
