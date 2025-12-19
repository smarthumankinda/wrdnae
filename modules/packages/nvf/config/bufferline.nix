{
  flake.modules.nvf.bufferline = {
    vim = {
      tabline.nvimBufferline = {
        enable = true;
        mappings.closeCurrent = "bx";
      };

      keymaps = [
        {
          key = "H";
          mode = "n";
          silent = true;
          action = ":BufferLineCyclePrev<CR>";
        }
        {
          key = "L";
          mode = "n";
          silent = true;
          action = ":BufferLineCycleNext<CR>";
        }
        {
          key = "<leader>bd";
          mode = "n";
          silent = true;
          action = ":let &showtabline = (&showtabline == 2 ? 1 : 2)<CR>";
        }
      ];
    };
  };
}
