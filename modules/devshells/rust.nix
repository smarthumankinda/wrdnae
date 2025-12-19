{
  perSystem = { self', pkgs, ... }: {
    devshells.rust = {
      devshell = {
        packages = [
          pkgs.cargo
          self'.packages.nvf-rust
          pkgs.rustlings
        ];

        interactive.fish.text = ''
          exec fish
        '';
      };
    };
  };
}
