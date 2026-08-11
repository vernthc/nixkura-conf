{ ... }:
{
  programs.zsh = {
    enable = true;

    shellAliases = {
      rb = "sudo nixos-rebuild switch --flake ~/nixos#nixkura";
      cd = "z";
      cp = "cp -r";
      lsg = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
      # rmg = "sudo nix-collect-garbage --delete-older-than 14d";
      v = "nvim";
      nvh = "nvim ~/.config/hypr/monitors.lua";
    };


    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec start-hyprland
      fi

      '';

  initContent = ''
    eval "$(starship init zsh)"
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"

    '';
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "z" "sudo" ];
    };
    # zsh plugins
  syntaxHighlighting.enable = true;
  autosuggestion.enable = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

}
