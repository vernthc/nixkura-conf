{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
    hl.config({
        input = {
            kb_layout  = "us",
            follow_mouse = 1,

            sensitivity = -0.5,

            touchpad = {
                natural_scroll = false,
            },

            repeat_delay = 300,
            repeat_rate = 40,
            accel_profile = "flat",
            force_no_accel = false,
        },
    })

    hl.device({
        name = "synps/2-synaptics-touchpad",
        enabled = false
    })

    hl.device({
        name = "ps/2-generic-mouse",
        enabled = false
    })
  '';
}
