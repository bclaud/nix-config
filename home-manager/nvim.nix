{ pkgs, ... }: {
  home.packages = with pkgs; [ neovim fzf unzip clang alejandra ];

  xdg.configFile.nvim = {
    source = ./nvim;
    recursive = true;
  };
}
