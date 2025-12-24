{inputs, ...}: {
  flake.modules.nixos.flatpaks = {
    imports = [
      inputs.nix-flatpak.nixosModules.nix-flatpak
    ];

    services.flatpak = {
      enable = true;
      remotes = [{
        name = "flathub";
        location = "https://flathub.org/repo/flathub.flatpakrepo";
      }];
      packages = [
        # { appId = "org.smth.smth"; origin = "flathub"; }
      ];
    };
  };
}
