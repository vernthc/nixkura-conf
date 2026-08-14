{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos
    ./packages.nix
  ];

  modules.nixos.nvidia.enable = true;
  modules.nixos.inputs.enable = true;

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # allow flakes
  time.timeZone = "Africa/Cairo";
  i18n.defaultLocale = "en_US.UTF-8";
  system.stateVersion = "26.05"; # dont touch this line
}
