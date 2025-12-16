{
  lib,
  config,
  ...
}: let
  inherit (config) flake;
  inherit (lib) mkOption;
  inherit (lib.types) str;
in {
  options.flake.settings = {
    username = mkOption {
      description = "It's me!";
      type = str;
      default = "awesome";
    };
    flakedir = mkOption {
      description = "Absolute path to where flake is, don't change.";
      type = str;
      default = "/home/${config.flake.settings.username}/wrdnae";
    };
  };
}
