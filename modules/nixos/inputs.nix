{ config, lib, ... }:

let
  cfg = config.modules.nixos.inputs;
in {
  options.modules.nixos.inputs = {
    enable = lib.mkEnableOption "turn off mouse Debounce";
  };

config = lib.mkIf cfg.enable {
  environment.etc."libinput/local-overrides.quirks".text = ''
  [Mouse Debounce]
  MatchName=*
  ModelBouncingKeys=1
'';
 };
}
