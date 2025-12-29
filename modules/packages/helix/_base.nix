{
  theme = "ashen";

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
    # #   right = [ "file-type" "position" ];
    # };

    cursor-shape = {
      insert = "bar";
      normal = "block";
      select = "block";
    };
  };
}
