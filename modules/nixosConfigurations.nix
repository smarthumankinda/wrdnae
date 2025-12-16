{config, ...}: let
  inherit (config.flake.lib.mk-os) linux;
in {
  flake.nixosConfigurations = {
    omen = linux "omen";
  };
}
