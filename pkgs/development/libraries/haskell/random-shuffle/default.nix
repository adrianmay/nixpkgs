# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, MonadRandom, random }:

cabal.mkDerivation (self: {
  pname = "random-shuffle";
  version = "0.0.4";
  sha256 = "0586bnlh0g2isc44jbjvafkcl4yw6lp1db8x6vr0pza0y08l8w2j";
  buildDepends = [ MonadRandom random ];
  meta = {
    description = "Random shuffle implementation";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
