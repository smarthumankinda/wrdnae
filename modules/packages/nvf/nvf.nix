# Borrowed (Stolen) from jet https://github.com/Michael-C-Buckley/nixos/blob/a82519f6b83a463b2beeee41e0565b6dcd9b591b/packages/nvf/outputs.nix#L14

{ inputs, config, ... }: let
  inherit
    (config.flake.modules.nvf)
    regular
    rust
    ;
in {
  perSystem = {pkgs, ...}: let
      mkNvf = modules:
        (inputs.nvf.lib.neovimConfiguration {
          inherit pkgs modules;
        }).neovim;
    in {
    packages = {
      nvf-regular = mkNvf [regular];
      nvf-rust = mkNvf [regular rust];
    };
  };
}
