{
  imports = [
    ./animations.nix
    ./autostart.nix
    ./binds.nix
    ./decorations.nix
    ./env.nix
    ./input.nix
    ./layout.nix
    ./misc.nix
    ./windowrules.nix
  ];

  wayland.windowManager.hyprland.extraConfig = ''
  require("monitors")
  '';
}
