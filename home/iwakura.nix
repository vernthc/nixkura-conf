{ config, pkgs, ... }:
{

  imports = [
  ../modules/homeManager/default.nix
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

}
