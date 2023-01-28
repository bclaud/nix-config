{ pkgs, ... }: {
  home.packages = with pkgs; [ fish zoxide starship ripgrep fd ];

  xdg.configFile.fish = {
    source = ./fish;
    recursive = true;
  };
}
