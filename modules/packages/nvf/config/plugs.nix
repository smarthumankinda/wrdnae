{
  flake.modules.nvf.plugs = {
    vim = {
      statusline.lualine = {
        enable = true;
      };
      notes.todo-comments.enable = true;
      dashboard.alpha.enable = true;
      autopairs.nvim-autopairs.enable = true;
      telescope.enable = true;
      autocomplete.blink-cmp.enable = true;
      visuals = {
        indent-blankline.enable = true;
        rainbow-delimiters.enable = true;
      };
      mini = {
        indentscope.enable = true;
      };
      binds = {
        whichKey.enable =true;
      };
      ui = {
        noice.enable = true;
      };
    };
  };
}

