{
  perSystem = { self', pkgs, ... }: {
    devshells.cpp = {
      devshell = {
        packages = [
          self'.packages.hx-regular
          pkgs.gcc
          pkgs.clang-tools
        ];

        interactive.fish.text = ''
          exec fish
        '';
      };
    };
  };
}
