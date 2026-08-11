{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''

hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland,x11")
hl.env("XAUTHORITY", "$HOME/.Xauthority")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")

hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GL_THREADED_OPTIMIZATIONS", "1")
hl.env("__GL_GSYNC_ALLOWED", "1")
hl.env("__GL_VRR_ALLOWED", "1")
hl.env("__GL_SYNC_TO_VBLANK", "0")
hl.env("NVD_BACKEND", "direct")
hl.env("WLR_DRM_DEVICES", "/dev/dri/card0")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "24")
'';
}
