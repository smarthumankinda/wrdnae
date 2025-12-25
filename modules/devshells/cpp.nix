{
  perSystem = { self', pkgs, ... }: {
    devshells.cpp = {
      devshell = {
        packages = [
          self'.packages.hx-cpp
          pkgs.gcc
          pkgs.cmake
          pkgs.ninja
        ];

        interactive.fish.text = ''
          exec fish
        '';
      };
    };
  };
}
