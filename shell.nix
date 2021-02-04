{pkgs ? import ./nixpkgs.nix {}}:

with pkgs;

mkShell {
  # Set UTF-8 local so that run-tests can parse GHC's unicode output.
  LANG="C.UTF-8";

  buildInputs = [
    bazel
    nix
    python3
    which
    glibcLocales
    cacert
    openjdk11
  ];
}
