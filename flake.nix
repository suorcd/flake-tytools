{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.05";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.tytools = nixpkgs.legacyPackages.x86_64-linux.tytools;


    packages.x86_64-linux.default = self.packages.x86_64-linux.tytools;

  };
}
