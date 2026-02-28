final: prev:
let
  bitwigJar = prev.fetchurl {
    url = "https://files.catbox.moe/8ueh48.gz";
    hash = "sha256-kP3G1NKI92kSdbXO8UxfoF1ekUhzPJOYbMPr07fc0NU=";
  };
in
{
  bitwig-studio5-unwrapped = prev.bitwig-studio5-unwrapped.overrideAttrs (old: {
    installPhase = ''
      runHook preInstall

      mkdir -p $out/bin
      cp -r opt/bitwig-studio $out/libexec
      tar -xvzf ${bitwigJar} -C $out/libexec/bin
      ln -s $out/libexec/bitwig-studio $out/bin/bitwig-studio
      cp -r usr/share $out/share

      # Bitwig includes a copy of libxcb-imdkit.
      # Removing it will force it to use our version.
      # rm $out/libexec/lib/bitwig-studio/libxcb-imdkit.so.1

      runHook postInstall
    '';
  });
}
