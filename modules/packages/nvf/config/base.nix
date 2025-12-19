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

        vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#474b59" })
        vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#474b59" })
        vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffb778" })
        
        vim.api.nvim_create_augroup("NumberToggle", { clear = true })
        
        vim.api.nvim_create_autocmd("InsertEnter", {
            group = "NumberToggle",
            pattern = "*",
            callback = function()
                vim.opt.relativenumber = false
                vim.api.nvim_set_hl(0, "LineNr", { fg = "#474b59" })
            end,
        })
        
        vim.api.nvim_create_autocmd("InsertLeave", {
            group = "NumberToggle",
            pattern = "*",
            callback = function()
                vim.opt.relativenumber = true
                vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffb778" })
            end,
        })
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
