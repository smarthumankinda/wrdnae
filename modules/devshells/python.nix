{
  perSystem = {self', pkgs, ...}: {
    devshells.python = {
      env = [
        {
          SHELL = "fish";
        }
      ];
      packages = [
        self'.packages.hx-python
        python3
      ];
    };
  };
}
