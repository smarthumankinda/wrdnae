{
  flake.modules.nixos.helix = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [nvim];
  };
}
