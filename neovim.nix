with import <nixpkgs> {}; # bring all of Nixpkgs into scope

stdenv.mkDerivation rec {
  name = "neovim-10.0";
  src = fetchurl {
    url = "https://github.com/neovim/neovim/tree/release-0.10";
  };
}
