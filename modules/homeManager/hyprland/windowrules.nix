{ ... }:
{
wayland.windowManager.hyprland.extraConfig = ''

local WaybarRule = hl.layer_rule({
  match = { namespace = "waybar" },
  blur  = true,
  ignore_alpha = 0.1,
})

local QsRule = hl.layer_rule({
  match = { namespace = "quickshell" },
  blur  = true,
  ignore_alpha = 0.1,
})



local RofiRule = hl.layer_rule({
  match        = {namespace = "rofi"},
  animation    = "slide_up",
  ignore_alpha = 0.2,
  blur         = true,
})

local SwayncRule = hl.layer_rule({
  match = {namespace = ("sway-control-center|sway-notification-window")},
  blur  = true,
  ignore_alpha = 0.1,
})

local SwayosdRule = hl.layer_rule({
  match        = {namespace = "swayosd"},
  blur         = true,
  ignore_alpha = 0.1,
  animation    = "slide_up",
})

local WlogoutRule = hl.layer_rule({
  match = {namespace = "logout_dialog"},
  blur  = true,
  animation = "fade",
})





hl.window_rule({
  match = { class = "minecraft" }, immediate = true
})

hl.window_rule({
  match = { class = "net-minecraft-launcher-Main" }, immediate = true
})

RofiRule   :is_enabled(true)
WaybarRule :is_enabled(true)
SwayncRule :is_enabled(true)
SwayosdRule:is_enabled(true)
WlogoutRule:is_enabled(true)


local all = hl.window_rule({
  match = {class = ".*"},
  suppress_event = "maximize",
})

local OpaqueApps = hl.window_rule({
  match  = {class = ("firefox|zen|zen-beta|brave|kitty")},
  opaque = true,
})

local YadRule = hl.window_rule({
  match  = {class = "yad_dialogs"},
  float  = true,
  center = true
})

local FilePickers = hl.window_rule({
  match  = {title = "(Open File|Open Folder|Open|Save|Save As|Export|Import|Choose File|Rename)"},
  float  = true,
  center = true,
})

local XdgRule = hl.window_rule({
  match  = {class = "(xdg-desktop-portal-gtk|xdg-desktop-portal-hyprland|Xdg-desktop-portal-gtk|Xdg-desktop-portal-hyprland)"},
  float  = true,
  center = true,
})

local VesktopRule = hl.window_rule({
  match  = {class = "vesktop"},
  opacity = "0.92 override 0.72 override",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({ match = {class = "codium"}, opacity = "1 override"})
hl.window_rule({ match = {initial_title = "Minecraft* 1.21.11"}, stay_focused = true})
hl.window_rule({ match = {class = "org.gnome.Loupe|org.gnome.Totem"}, float = true})

all:is_enabled(true)
OpaqueApps:is_enabled(true)
YadRule:is_enabled(true)
FilePickers:is_enabled(true)
XdgRule:is_enabled(true)
VesktopRule:is_enabled(true)
'';
}
