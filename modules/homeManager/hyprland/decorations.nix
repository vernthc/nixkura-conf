{ ... }:
{
wayland.windowManager.hyprland.extraConfig = ''

local colors = require("colors")

  hl.config({
  general = {
    gaps_in     = 5,
    gaps_out    = 16,
    border_size = 0,

    col = {
      active_border   = { colors = {colors.primary, colors.secondary}, angle = 45 },
      inactive_border = "rgba(59595900)",
    },
  },

  decoration = {
    rounding         = 30,
    rounding_power   = 2,
    active_opacity   = 0.90,
    inactive_opacity = 0.80,
    
   shadow = {
    enabled      = true,
    range        = 5,
    render_power = 1,
    sharp        = false,
    color        = "rgba(20, 20, 20, 0.8)",
   },

  blur = {
    enabled        = true,
    size           = 5,
    passes         = 3,
    contrast       = 1.5,
    ignore_opacity = true,
    brightness     = 0.95,
    xray           = false,
    noise          = 0,
    new_optimizations = true,

  },
}

})  '';
}
