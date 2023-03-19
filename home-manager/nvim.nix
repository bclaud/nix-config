{pkgs, ...}: {
  home.packages = with pkgs; [neovim fzf unzip clang ripgrep fd cargo clang luajit nil nodejs];

  xdg.configFile.nvim = {
    source = ./nvim;
    recursive = true;
  };
}
