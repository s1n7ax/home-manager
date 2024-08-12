{ pkgs, ... }:
{
  imports = [ ../applications/obs-studio ];
  home.packages = with pkgs; [
    grim
    slurp
  ];
}
