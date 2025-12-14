{
  perSystem = { self', pkgs, ... }: {
    devshells.rust = {
      devshell = {
        packages = [
          pkgs.cargo
          self'.packages.hx-rust
          pkgs.rustlings
        ];

        interactive.fish.text = ''
          exec fish
        '';
      };
    };
  };
}
