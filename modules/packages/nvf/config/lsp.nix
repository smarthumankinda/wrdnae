{
  flake.modules.nvf.lsp = {
    vim = {
      lsp = {
        enable = true;
        trouble.enable = true;
      };

      diagnostics.enable = true;
    };
  };
}
