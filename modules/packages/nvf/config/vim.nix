{
  flake.modules.nvf.vim = {
    vim = {
      theme.enable = true;
      treesitter.enable = true;
      git.enable = true;
      options.shiftwidth = 4;
      autocomplete.blink-cmp.enable = true;
      autopairs.nvim-autopairs.enable = true;
      clipboard = {
        enable = true;
        registers = "unnamedplus";
      };
    };
  };
}
