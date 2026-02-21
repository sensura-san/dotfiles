# symlink custom config files to correct paths
{ config, ... }:
let
  configDir = "${config.home.homeDirectory}/dev/dotfiles/darwin/home/config";
in
{
  home.file = {
    # ".config/btop".source = "${configDir}/btop";
    ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${configDir}/nvim";
  };
}
