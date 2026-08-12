{ ... }:
{
wayland.windowManager.hyprland.extraConfig = ''

local colors = require("colors")

  hl.config({
  general = {
    gaps_in     = 5,
    gaps_out    = 13,
    border_size = 2,

    col = {
      active_border   = { colors = {colors.primary, colors.secondary}, angle = 45 },
      inactive_border = "rgba(59595900)",
    },
  },

  decoration = {
    rounding         = 30,
    rounding_power   = 2,
    active_opacity   = 0.95,
    inactive_opacity = 0.80,
    
   shadow = {
    enabled      = true,
    range        = 5,
    render_power = 1,
    sharp        = false,
    color        = "rgba(20, 20, 20, 0.8)",
   },

   blur = {
    enabled   = true,
    size      = 8,
    passes    = 3,
    vibrancy  = 0,
    contrast  = 1.4,
    noise     = 0.05,
    special   = false,
    input_methods = true,
   },
  }

})  '';
}
