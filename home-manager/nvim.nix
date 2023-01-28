{ pkgs, ... }: {
  home.packages = with pkgs; [ neovim fzf unzip clang ripgrep fd ];

  xdg.configFile.nvim = {
    source = ./nvim;
    recursive = true;
  };
}
