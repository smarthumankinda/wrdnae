# Honestly just yoinked from @argosnothing (almost) word to word I do not claim to have written this code by my self

{
  inputs,
  config,
  lib,
  ...
}: let
  flake.lib.mk-os = {
    inherit mkNixos;
    inherit linux;
  };

  linux = mkNixos "x86_64-linux";

  mkNixos = system: name:
    inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        config.flake.modules.nixos.${name}
        config.flake.modules.nixos.core
        {
          networking.hostName = lib.mkDefault name;
          nixpkgs = {
            hostPlatform = lib.mkDefault system;
            overlays = [
              (_: super: {
                inherit (super.stdenv.hostPlatform) system;
              })
            ];
            config = {
              allowUnfree = true;
              showAliases = true;
            };
          };
          system.stateVersion = "25.05";
        }
      ];
    };
in {
  inherit flake;
}
