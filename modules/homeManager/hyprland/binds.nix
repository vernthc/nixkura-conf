{ ... }:
{
  wayland.windowManager.hyprland.extraConfig = ''
    -- variables
    local mainMod = "SUPER"
    local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
    local terminal = "kitty"
    local fileManager = "nautilus"
    local menu = "rofi -show drun -normal-window -theme ~/.config/rofi/launchers/launcher.rasi"

    hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
    hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
    hl.bind(mainMod .. " + P", hl.dsp.window.float({ action = "toggle" }))
    hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))

    -- Move focus with mainMod + arrow keys
    hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
    hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
    hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
    hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

    -- workspaces
    for i = 1, 10 do
        local key = i % 10 -- 10 maps to key 0
        hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
        hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
    end

    -- special workspace (scratchpad)
    hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
    hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

    -- Move/resize windows with mainMod + LMB/RMB and dragging
    hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
    hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

    -- Laptop multimedia keys for volume and LCD brightness
    hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"), { locked = true, repeating = true })
    hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"),      { locked = true, repeating = true })
    hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
    hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
    hl.bind("F6",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
    hl.bind("F5",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

    hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
    hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

    -- screenshot
    -- hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))
    hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("quickshell"))


    -- scripts
    local function script(path)
        return hl.dsp.exec_cmd("bash " .. path)
    end

    hl.bind(mainMod .. " + SHIFT + T", script("~/.local/bin/wall"))
    hl.bind(mainMod .. " + V", script("~/.local/bin/clipboard.sh"))
    hl.bind(mainMod .. " + D", script("~/.local/bin/image-clipboard"))
    hl.bind(mainMod .. " + escape", script("~/.local/bin/menu.sh"))
    hl.bind(mainMod .. " + apostrophe", script("~/.local/bin/scripts/vscodium-opacity.sh"))

    -- TopBar scripts
    hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("bash ~/.config/waybar/switch-theme.sh"))
    hl.bind(mainMod .. " + I", hl.dsp.exec_cmd("bash ~/.config/waybar/scripts/launch.sh"))
    hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("bash ~/.local/coding/quickshell/scripts/reload.sh"))

    -- lock
    hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("quickshell --path ~/.config/quickshell/Lock.qml"))

    -- fullscreen
    hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ direction = "toggle" }))

    -- Apps
    hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("codium"))

    -- gamemode
    hl.bind("SUPER + SHIFT + G", hl.dsp.exec_cmd("gamemode.sh"))
  '';
}
