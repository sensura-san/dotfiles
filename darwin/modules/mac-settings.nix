# for misc. mac settings
{
  # enable press-and-hold repeat for keyboard keys, instead of inputting accents
  system.defaults.NSGlobalDomain.ApplePressAndHoldEnabled = true;

  # nix-darwin: enable touch ID for sudo in sudo_local
  # https://nix-darwin.github.io/nix-darwin/manual/#opt-security.pam.services.sudo_local.touchIdAuth
  security.pam.services.sudo_local.touchIdAuth = true;
}
