{ ... }:
{
wayland.windowManager.hyprland.extraConfig = ''
  hl.config({
    misc = {
    disable_hyprland_logo        = true,
    disable_splash_rendering     = true,
    animate_mouse_windowdragging = false,
    vrr = 1
  },

  cursor = {
    no_hardware_cursors          = true,
  },

  render = {
    direct_scanout = true
  },

  debug = {
    vfr = false,
  }
  }) '';
}
