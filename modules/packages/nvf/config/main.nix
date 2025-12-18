{config, ...}: {
  flake.modules.nvf.regular = {
    imports = with config.flake.modules.nvf; [
      plugs
      languages
    ];
    
    config.vim = {
      theme.enable = true;
      treesitter.enable = true;
      options.shiftwidth = 2;
    };
  };
}
