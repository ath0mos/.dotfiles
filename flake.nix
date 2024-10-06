{
  description = "A snow flake";

  # Dependencies of my flake
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Adding home manager
    home-manager.url = "github:nix-community/home-manager/master";

    # Setting pgks-location for home manager
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs:
    # Injecting into Output
    let 

      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

    in {

      nixosConfigurations = {
        ATH0MOS = lib.nixosSystem {
          inherit system; # passes system to scope
          modules = [
            ./systemSettings/configuration.nix
          ];
        };
      };

    # HOME-MANAGER
      homeConfigurations = {
        ath0mos_ = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            /home/ath0mos_/.dotfiles/homeManager/home.nix
          ];
        };
      };

      # Adding pkgs to the dev-enviroment
      /*devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [ pkgs.neovim ];
      };*/

  };
}
