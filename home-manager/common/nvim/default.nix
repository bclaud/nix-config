{pkgs, ...}: {
  home.packages = with pkgs; [ neovim fzf unzip clang ripgrep fd cargo clang luajit nil nodejs xclip ];

  programs.neovim.defaultEditor = true;
  
  xdg.configFile.nvim = {
    source = ./config;
    recursive = true;
  };
}
