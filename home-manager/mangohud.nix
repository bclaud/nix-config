{ pkgs, ...}: {
   #is not working properly
   home.packages = with pkgs; [ mangohud ];
   xdg.configFile."MangoHud/MangoHud.conf".source = ./mangohud/MangoHud.conf;
}
