# Stolen from michael c buckley https://github.com/Michael-C-Buckley/nixos/blob/8f64b80bae603f4ba87d437ae1011322c67a4552/packages/nvf/outputs.nix#L7

{
  config,
  inputs,
  ...
}: let
  inherit
    (config.flake.modules.nvf)
    default
    python
    regular
    cpp
    rust
    ;
in {
  perSystem = {pkgs, ...}: let
    mkNvf = modules:
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs modules;

            config.vim = {
      lsp = {
        enable = true;
        trouble.enable = true;
      };

      diagnostics = {
        enable = true;
        nvim-lint.enable = true;
      };
    };

      }).neovim;
  in {
    packages = {
      nvf = mkNvf [default regular];
      nvf-python = mkNvf [default python];
      nvf-rust = mkNvf [default rust];
      nvf-cpp = mkNvf [default cpp];
    };
  };
}
