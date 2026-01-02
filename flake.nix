{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-25.11";
    import-tree.url = "github:vic/import-tree";
    flake-parts.url = "github:hercules-ci/flake-parts";
    wrappers.url = "github:Lassulus/wrappers";
    devshell.url = "github:numtide/devshell";
    hjem-impure.url = "github:Rexcrazy804/hjem-impure";
    hjem.url = "github:feel-co/hjem";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    quickshell.url = "github:quickshell-mirror/quickshell";
    systems = {
      url = "github:nix-systems/default";
    };
    ambxst = {
      url = "github:darsh032/ambxst-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # caelestia-shell = {
    #   url = "github:caelestia-dots/shell";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    # caelestia-cli = {
    #   url = "github:caelestia-dots/cli";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;}
    (inputs.import-tree ./modules);
}
