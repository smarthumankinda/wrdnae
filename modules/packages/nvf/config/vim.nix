{
  flake.modules.nvf.vim = {
    vim = {
      theme.enable = true;
      treesitter.enable = true;
      git.enable = true;
      clipboard = {
        enable = true;
        registers = "unnamedplus";
      };
      lsp = {
        enable = true;
        trouble.enable = true;
      };
    };
  };
}
