{
  theme = "tokyonight";

  editor = {
    soft-wrap.enable = true;
    continue-comments = false;
    line-number = "relative";
    default-yank-register = "+";
    bufferline = "multiple";

    lsp.display-messages = true;

    # statusline = {
    #   mode.normal = "NORMAL";
    #   mode.insert = "INSERT";
    #   mode.select = "SELECT";
    #   right = [ "file-type" "position" ];
    # };
    # color-modes = true;

    cursor-shape = {
      insert = "bar";
      normal = "block";
      select = "block";
    };
  };
}
