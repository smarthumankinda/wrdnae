{
  perSystem = { self', inputs', pkgs, ... }: {
    devshells.quickshell = {
      devshell = {
        packages = [
          pkgs.fish
          inputs'.quickshell.packages.default
          self'.packages.hx-quickshell
        ];

        interactive.fish.text = ''
          exec fish
        '';
      };
    };
  };
}
