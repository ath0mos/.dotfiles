{
  description = "A snow flake";

  # Dependencies of my flake
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Adding home manager
    home-manager.url = "github:nix-community/home-manager";
    # Setting pgks-location for home manager
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs = { nixpkgs, ... } @ inputs:
  {

      nixosConfigurations.ATH0MOS = nixpkgs.lib.nixosSystem {
        #        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
        ];
      };


      # Adding pkgs to the dev-enviroment
      /*devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [ pkgs.neovim ];
      };*/

  };
}
