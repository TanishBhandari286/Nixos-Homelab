{ config, pkgs, ... }:

{
  home.username = "tb";
  home.homeDirectory = "/home/tb";
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
  ];

  home.file.".config/starship.toml" = {
  source = ./dotfiles/.config/starship.toml;
  };

  home.sessionVariables = {
     EDITOR = "nvim";
  };

  programs.zsh.enable = true;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
