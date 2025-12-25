{
  perSystem = { self', pkgs, ... }: {
    devshells.cpp = {
      devshell = {
        packages = [
          self'.packages.hx-cpp
          pkgs.gcc
        ];

        interactive.fish.text = ''
          exec fish
        '';
      };
    };
  };
}
