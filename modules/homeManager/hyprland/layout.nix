{ ... }:
{
wayland.windowManager.hyprland.extraConfig = ''
  hl.config({

  general = {
    layout = "dwindle",
    allow_tearing = true
  },

    dwindle = {
        preserve_split = true,
        force_split = 2,
    },
}) '';
}
