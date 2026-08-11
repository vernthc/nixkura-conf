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

    intelBusId = "PCI:0:0:2"
    nvidiaBusId = "PCI:1:0:0"
  }

  environment.sessionVariables = {
   LIBVA_DRIVER_NAME = "nvidia";
   GBM_BACKEND       = "nvidia-drm";
   NVD_BACKEND       = "direct";
   WLR_DRM_DEVICES   = "/dev/dri/card0";
   __GL_THREADED_OPTIMIZATIONS = "1";
   __GL_GSYNC_ALLOWED          = "1";
   __GL_VRR_ALLOWED            = "1";
   __GL_SYNC_TO_VBLANK         = "0";
  };
}
