{
  flake.modules.nvf.lsp = {
    vim = {
      lsp = {
        enable = true;
      };

      diagnostics = {
        enable = true;

        config = {
          virtual_text = true; 
        };
      }; 
    };
  };
}
