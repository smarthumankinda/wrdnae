{
  flake.modules.nvf.base = {
    config.vim = {
      treesitter.enable = true;
      options.shiftwidth = 2;
      theme = {
        enable = true;
        name = "catppuccin";
        style = "mocha";
      };

      clipboard = {
        enable = true;
        providers.wl-copy.enable = true;
      };
      luaConfigRC.base = ''
        vim.opt.clipboard = "unnamedplus"
        vim.opt.fillchars = { eob = " " }
      '';
      keymaps = [
        {
          key = "<C-d>";
          mode = "n";
          silent = true;
          action = "<C-d>zz";
        }
        {
          key = "<C-u>";
          mode = "n";
          silent = true;
          action = "<C-u>zz";
        }
      ];
    };
  };
}
