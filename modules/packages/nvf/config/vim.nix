{
  flake.modules.nvf.vim = {
    vim = {
      treesitter.enable = true;
      git.enable = true;
      options.shiftwidth = 4;
      autocomplete.blink-cmp.enable = true;
      autopairs.nvim-autopairs.enable = true;
      clipboard = {
        enable = true;
        registers = "unnamedplus";
      };
      theme = {
        enable = true;
        name = "rose-pine";
        style = "main";
        transparent = true;
      };
      luaConfigRC.minimal = ''
        vim.opt.shortmess:append("I")
        vim.opt.fillchars = { eob = " " }
      '';
    };
  };
}
