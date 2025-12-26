{config, ...}: {
  flake.modules.nvf.default = {
    imports = with config.flake.modules.nvf; [
      vim
    ];
  };
}
