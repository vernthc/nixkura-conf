{ pkgs, inputs, ... }:
{
  imports = [ inputs.cachyos-nix.nixosModules.default ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = false;
  boot.kernelPackages = pkgs.linuxPackages_cachyos;
  services.getty.autologinUser = "iwakura";
}
