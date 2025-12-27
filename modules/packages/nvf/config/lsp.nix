{
  flake.modules.nvf.lsp = {
    vim = {
      lsp = {
        enable = true;

        trouble = {
          enable = true;
          mappings.quickfix = "<leader>F";
        };
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
