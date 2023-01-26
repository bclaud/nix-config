{ pkgs, ... }: {
  home.packages = with pkgs; [ neovim ];

  xdg.configFile.nvim = {
    source = ./nvim;
    recursive = true;
  };
}
