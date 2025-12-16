{config, ...}: let
  inherit (config) flake;
in {
  flake.modules.nixos.omen = {pkgs, ...}: {
    imports = with flake.modules.nixos; [
      hyprland
      helix
      nvidia
    ];

    services.displayManager.gdm.enable = true;
    services.desktopManager.gnome.enable = true;

    services.printing.enable = true;

    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      #jack.enable = true;
    };

    users.users.${config.flake.settings.username} = {
      isNormalUser = true;
      description = "person";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
    };

    environment.systemPackages = with pkgs; [
       home-manager
       git
    ];

    nix.settings.experimental-features = [ "flakes" "nix-command" ];
  };
}
