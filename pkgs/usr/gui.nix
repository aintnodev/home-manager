{ pkgs, inputs, ... }:

let
  system = pkgs.stdenv.hostPlatform.system;
  zen-browser = inputs.zen-browser.packages.${system}.default;
in
with pkgs;
[
  # ERROR
  # bottles
  # graphite
  # pigment
  # recordbox

  # core
  loupe
  celluloid
  snapshot
  mission-center
  gnome-disk-utility

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
  crosspipe
  pwvucontrol
  easyeffects
  door-knocker
  gearlever
  millisecond
  virtualbox
  ventoy-full

  # internet
  # karere
  telegram-desktop
  google-chrome
  zen-browser

  # create
  audacity
  bitwig-studio
  krita
  kdePackages.kdenlive
  obs-studio

  # dev
  beekeeper-studio
  hoppscotch

  # games
  learn6502
  highscore
  pcsx2
  xemu
]
