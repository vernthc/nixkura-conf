{ ... }:
{
wayland.windowManager.hyprland.extraConfig = ''

hl.curve("sb", { type = "bezier", points = { {0.10, 0.8}, {0.22, 1.00} } })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "sb" })
hl.animation({ leaf = "border",        enabled = true,  speed = 10, bezier = "default" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 10, bezier = "sb", style = "slide" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3, bezier = "default" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 7, bezier = "sb", style = "slide" })
'';
}
