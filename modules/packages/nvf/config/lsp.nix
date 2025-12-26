{
  flake.modules.nvf.lsp = {
    vim = {
      lsp = {
        enable = true;
      };

      diagnostics = {
        enable = true;
        nvim-lint.enable = true;

        config = {
          virtual_text = true; 
          signs = true;
          update_in_insert = true;
        };
      }; 
    };
  };
}
