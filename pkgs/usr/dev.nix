{ pkgs, inputs, ... }:

let
  system = pkgs.stdenv.hostPlatform.system;
  zjstatus = inputs.zjstatus.packages.${system}.default;
in
with pkgs;
[
  live-server
  zjstatus

  cargo
  clang
  go
  jdk
  nodejs
  pnpm
  python3
  rustc
  uv
]
