{ pkgs, ... }:
# NOTE: why disabled in vi's? its in homebrew instead
{
  services.tailscale = {
    enable = true;
  };
  environment.systemPackages = with pkgs; [
    tailscale
  ];
}
