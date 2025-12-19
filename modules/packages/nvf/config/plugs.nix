{
  flake.modules.nvf.plugs = {
    vim = {
      statusline.lualine = {
        enable = false;
      };
      notes.todo-comments.enable = true;
      dashboard.alpha.enable = true;
      autopairs.nvim-autopairs.enable = true;
      telescope.enable = true;
      autocomplete.blink-cmp.enable = true;
      visuals = {
        indent-blankline.enable = false;
        nvim-web-devicons.enable = true;
      };
      binds = {
        whichKey.enable = true;
      };
      ui = {
        noice.enable = true;
        colorizer.enable = true;
      };
      utility = {
        multicursors.enable = true;
      };
    };
  };
}

