{ inputs, ... }: {
  perSystem = { pkgs, ... }: {
    packages.neovim = (inputs.nvf.lib.neovimConfiguration {
      pkgs = pkgs.legacyPackages.x86_64-linux;
      modules = [
        {
          config.vim = {
            theme.enable = true;
            treesitter.enable = true;
          };
        }
      ];
    }).neovim;
  };
}
