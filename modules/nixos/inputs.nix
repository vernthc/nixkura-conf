{ ... }
{
  environment.etc."libinput/local-overrides.quirks".text = ''
  [Mouse Debounce]
  MatchName=*
  ModelBouncingKeys=1
'';
}
