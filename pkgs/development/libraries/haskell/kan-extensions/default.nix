# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, adjunctions, comonad, contravariant, distributive, free
, mtl, pointed, semigroupoids, transformers
}:

cabal.mkDerivation (self: {
  pname = "kan-extensions";
  version = "4.1";
  sha256 = "1dg9q6rahgvsnsnd76r6a3harrllq3pzz9250cakgqip4n02dji1";
  buildDepends = [
    adjunctions comonad contravariant distributive free mtl pointed
    semigroupoids transformers
  ];
  meta = {
    homepage = "http://github.com/ekmett/kan-extensions/";
    description = "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})