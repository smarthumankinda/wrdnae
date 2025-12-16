{ inputs, ... }: {
  perSystem = {pkgs, ...}: {
    packages.neovim = (inputs.nvf.lib.neovimConfiguration {
      inherit pkgs;
      
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
