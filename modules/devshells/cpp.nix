{
  perSystem = { self', pkgs, ... }: {
    devshells.cpp = {
      devshell = {
        packages = [
          pkgs.clang
          pkgs.clang-tools
          pkgs.cmake
          pkgs.gdb
          pkgs.pkg-config
        ];

        interactive.fish.text = ''
          exec fish
        '';
      };
    };
  };
}
