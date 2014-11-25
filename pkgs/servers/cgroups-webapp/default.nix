# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, blazeHtml, fetchgit, happstackServer, mtl }:

cabal.mkDerivation (self: {
  pname = "cgroups-webapp";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/adrianmay/cgroups-webapp.git";
    sha256 = "1690742dc818695b5838935975537d1692cbbec39b87fd3e4f2952e9670214ef";
    rev = "4d2ac040673e9a7c859d2baba2a3011d1acecfc3";
  };
  isLibrary = false;
  isExecutable = true;
  buildDepends = [ blazeHtml happstackServer mtl ];
  meta = {
    description = "Browse and manipulate cgroups via http";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})