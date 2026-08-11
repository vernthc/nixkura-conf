{lib, ... }:
let
  autostartCmds = [
    "awww-daemon"
    "waybar"
    "udiskie"
    "hypridle"
    "swayosd-server --top-margin 1"
    "ydotoold"
    "wl-paste --type text --watch cliphist store"
    "wl-paste --type image --watch cliphist store"
  ];
in

{
  wayland.windowManager.hyprland.extraConfig = ''
    hl.on("hyprland.start", function()
      local cmds = {
        ${lib.concatMapStringsSep "\n        " (cmd: "\"${cmd}\",") autostartCmds}
      }
      for _, cmd in ipairs(cmds) do
        hl.exec_cmd(cmd)
      end
    end)
  '';
}
