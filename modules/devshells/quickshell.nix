{
  perSystem = { self', inputs', pkgs, ... }: {
    devshells.quickshell = {
      devshell = {
        packages = [
          pkgs.fish
          inputs'.quickshell.packages.default
          self'.packages.hx-regular
        ];

        interactive.fish.text = ''
          exec fish
        '';
      };
    };
  };
}
