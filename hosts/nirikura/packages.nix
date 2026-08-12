{ pkgs, inputs, ... }:
{
    environment.systemPackages = with pkgs; [
    nvim
    fuzzel
    rofi
    alacritty
    kitty
    awww
    zsh
    niri
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.geist-mono
    rubik
  ];

}
