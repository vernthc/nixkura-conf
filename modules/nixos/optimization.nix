{ pkgs, ... }:
{
  # ── CPU governor ──────────────────────────────────────────────────────────────
  powerManagement.cpuFreqGovernor = "performance";

  # ── Kernel tweaks ─────────────────────────────────────────────────────────────
  boot.kernel.sysctl = {
    "vm.swappiness"                  = 10;
    "vm.compaction_proactiveness"    = 0;   # reduce background compaction stutter
    "kernel.sched_autogroup_enabled" = 0;
  };

  # ── I/O scheduler ─────────────────────────────────────────────────────────────
  services.udev.extraRules = ''
    ACTION=="add|change", KERNEL=="nvme[0-9]n[0-9]", ATTR{queue/scheduler}="none"
    ACTION=="add|change", KERNEL=="sd[a-z]",          ATTR{queue/scheduler}="mq-deadline"
   '';
 
    services.ananicy-cpp = {
      enable = true;
      package = pkgs.ananicy-cpp;
    };

  # ── Gamemode ──────────────────────────────────────────────────────────────────
  programs.gamemode.enable = true;

  # ── Gamescope ─────────────────────────────────────────────────────────────────
  # Use: gamescope -W 1920 -H 1080 -r 144 --backend wayland -- %command% u stupid 
  programs.gamescope.enable = true;

  # ── Steam ─────────────────────────────────────────────────────────────────────
  # programs.steam = {
  #   enable              = true;
  #   gamescopeSession.enable = true;
  #   extraCompatPackages = [ pkgs.proton-ge-bin ];
  # };
}
