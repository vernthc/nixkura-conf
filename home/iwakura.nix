{ config, pkgs, ... }:

{

  imports = [
    ./modules/hyprland/default.nix
    ./modules/kitty.nix
    ./modules/zsh.nix
    ./modules/gtk.nix
  ];

  home.username = "iwakura";
  home.homeDirectory = "/home/iwakura";
  home.stateVersion = "26.05";

  programs.kitty.enable = true;
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
  };

 home.packages = [
  ];

 home.file = {
 };

 home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
