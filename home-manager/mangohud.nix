{pkgs, ...}: {
  # works 100% only with gamescope
  home.packages = with pkgs; [mangohud];
  xdg.configFile."MangoHud/MangoHud.conf".source = ./mangohud/MangoHud.conf;
}
