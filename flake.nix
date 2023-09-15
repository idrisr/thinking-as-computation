{
  inputs.nixpkgs.url = "nixpkgs";
  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { system = system; };
    in {
      devShells.${system}.default = with pkgs;
        mkShell { buildInputs = [ swiProlog ]; };
    };
}
