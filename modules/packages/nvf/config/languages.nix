{
  flake.modules.nvf.languages = {
    vim = {
      languages = {
        nix = {
          enable = true;
          lsp.enable = true;
          treesitter.enable = true;
          format.enable = true;
        };
      };
    };
  };
}

