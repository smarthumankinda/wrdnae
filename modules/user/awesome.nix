{ config, inputs, ... }: let
  userName = config.flake.settings.username;
in {
  flake.modules.nixos.hjem = {pkgs, ...}: {
    imports = [
      inputs.hjem.nixosModules.default
    ];
    
    users.users.${userName} = {
      isNormalUser = true;
      description = "person";
      shell = pkgs.fish;
      extraGroups = [ "networkmanager" "wheel" ];
    
      packages = with pkgs; [
        # Caelestia
        inputs.caelestia-shell.packages."x86_64-linux".default
        inputs.caelestia-cli.packages."x86_64-linux".default
        wl-clipboard
        cliphist
        libnotify

        # idk
        eza
        zoxide
        bat
        glow
        starship
        nerd-fonts.jetbrains-mono
      
        # Hyprland stuff
        kitty
        fuzzel
        bibata-cursors

        # daily
        firefox
      ];
    };

    programs.fish.enable = true;

    hjem = let
      dotsDir = "${./dots}";
    in {
      extraModules = [ inputs.hjem-impure.hjemModules.default ];
    
      users.${userName} = {
        impure = {
          enable = true;
          dotsDir = "${dotsDir}";
          dotsDirImpure = "/home/${userName}/wrdnae/modules/user/dots";
        };

        clobberFiles = true;
      
        xdg.config.files = let
          dots = dotsDir;
        in {
          # Fish
          "fish".source = dots + "/fish";
          "starship.toml".source = dots + "/starship.toml";

          # Hyprland
          "hypr/hyprland.conf".source = dots + "/hypr/hyprland.conf";

          # Kitty
          "kitty/kitty.conf".source = dots + "/kitty/kitty.conf";

          # Quickshell
          "quickshell/mane".source = dots + "/quickshell";
        };
      
        files = let
          dots = dotsDir;
        in {
          # Firefox
          ".mozilla/firefox/profiles.ini".source = dots + "/firefox/profiles.ini";
          ".mozilla/firefox/default/user.js".source = dots + "/firefox/default/user.js";
          ".mozilla/firefox/default/extensions".source = dots + "/firefox/default/extensions";

          # Git
          ".gitconfig".source = ./dots/dot_gitconfig;
        };
      };
    };

    services.displayManager.autoLogin.enable = true;
    services.displayManager.autoLogin.user = "awesome";

    systemd.services."getty@tty1".enable = false;
    systemd.services."autovt@tty1".enable = false;
  };
}
