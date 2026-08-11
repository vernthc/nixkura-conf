{ config, pkgs, ... }:
{
  boot.blacklistedKernelModules = [ "nouveau" ];
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false; 
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;
  };

  hardware.nvidia.prime = {
    sync.enable = true;

    intelBusId = "PCI:0:0:2";
    nvidiaBusId = "PCI:1:0:0";
  };
}
