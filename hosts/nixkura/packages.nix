{ pkgs, inputs, ... }:
{
    environment.systemPackages = with pkgs; [
    wget
    neovim
    git
    nautilus
    rofi
    awww
    wl-clipboard
    cliphist
    waybar
    quickshell
    curl
    adw-gtk3
    equibop
    pavucontrol
    fastfetch
    prismlauncher
    lavat
    cava
    hyprshot
    matugen
    bibata-cursors
    ydotool
    hypridle
    swayosd
    brightnessctl
    udiskie
    loupe                   # image viewer
    totem                   # video player
    papers                  # PDF reader
    gpu-screen-recorder-gtk # best screen recorder trust
    imagemagick
    grim

    # flake packages
    inputs.HyprQuickFrame.packages.${pkgs.system}.default
    inputs.claude-desktop-flake.packages.${pkgs.system}.claude-desktop

   ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.geist-mono
    rubik
  ];

}
