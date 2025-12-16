{
  flake.modules.nixos.omen = {config, pkgs, ...}: {
    imports = with config.flake.modules.nixos; [
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

    users.users.awesome = {
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
