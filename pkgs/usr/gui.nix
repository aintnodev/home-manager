{ pkgs, inputs, ... }:

let
  system = pkgs.stdenv.hostPlatform.system;
  graphite = inputs.graphite.packages.${system}.default;
  zen-browser = inputs.zen-browser.packages.${system}.default;
in
with pkgs;
[
  # ERROR
  # bottles
  # graphite
  # krita
  # pigment
  # gearlever

  # core
  celluloid
  recordbox
  snapshot
  mission-center

  # utils
  constrict
  curtail
  mousai
  varia
  filen-desktop
  localsend
  eloquent
  obsidian

  # pwrusr
  pwvucontrol
  easyeffects
  door-knocker
  millisecond
  virtualbox

  # internet
  karere
  telegram-desktop
  google-chrome
  zen-browser

  # create
  audacity
  bitwig-studio
  gimp
  kdePackages.kdenlive
  obs-studio

  # dev
  beekeeper-studio
  vscode

  # games
  learn6502
  gnome-mahjongg
  gnome-chess
]
