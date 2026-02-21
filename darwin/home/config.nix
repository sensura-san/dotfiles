# symlink custom config files to correct paths
{ config, ... }:
let
  configDir = ./config;
  absConfigDir = "${config.home.homeDirectory}/dev/dotfiles/darwin/home/config";
in
{
  home.file = {
    ".config/ghostty".source = "${configDir}/ghostty";
    ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${absConfigDir}/nvim";
  };
}
