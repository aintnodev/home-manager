{ pkgs, ... }:

let
  wallpaper = pkgs.fetchurl {
    url = "https://assets.science.nasa.gov/content/dam/science/esd/eo/images/imagerecords/149000/149253/iss064e029444_lrg.jpg";
    sha256 = "sha256-Orzv5qOBnamrsWiEq5LtZShpfhR6o+EeuUpLl3Wlx7w=";
  };
in
{
  home.file.".local/share/wallpapers/otherworldly_earth_nasa.jpg".source = wallpaper;
}
