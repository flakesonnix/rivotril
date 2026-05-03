{
  description = "Reusable Nix framework extracted from dotfiles";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {self, nixpkgs}: {
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
    lib = import ./lib;
    flake.lib = import ./lib;
  };
}
