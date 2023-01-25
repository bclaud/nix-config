{ pkgs
, lunarvim
, ...
}: {
  home.packages = with pkgs; [
    ripgrep
    gnumake
    gcc
    xclip

    # lsp
    pylint
    rust-analyzer
    rnix-lsp

    #formatters
    alejandra
  ];

  home.file = {
    lvim = {
      source = lunarvim;
      target = ".local/share/lunarvim/lvim";
    };
    lvim_config = {
      source = "./config";
      target = ".config/lvim";
      recursive = true;
    };
    lvim_bin = {
      text = ''
        #!/usr/bin/env bash
        export LUNARVIM_RUNTIMER_DIR=~/.local/share/lunarvim
        export LUNAR_CONFIG_DIR=~/.config/lvim
        export LUNARVIM_CACHE_DIR=~/.cache/lvim
        export LUNARVIM_BASE_DIR=~/.local/share/lunarvim/lvim
        export TERM=wezterm
        exec -a lvim ${pkgs.neovim}/bin/nvim -u "$LUNARVIM_BASE_DIR/init.lua" "$@"
      '';
      target = ".local/bin/lvim";
      executable = true;
    };
  };
}
