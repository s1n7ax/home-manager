{ lib, settings, ... }:
let
  package-settings = {
    camera = true;
    screen-capture = true;
    fonts = true;
    rust-alternatives = true;
    utility = true;
    terminal = true;
    players = true;
    multi-media = true;
  };
in
{
  imports = [
    ./git.nix
    (import ../../system/packages/default.nix { inherit lib settings package-settings; })
  ];

  home.username = settings.username;
  home.homeDirectory = "/home/${settings.username}";
  home.stateVersion = "24.05";

  s1n7ax.dev = {
    c = true;
    container = true;
    java = true;
    javascript = true;
    lua = true;
    markdown = true;
    nix = true;
    python = true;
    rust = true;
    sh = true;
    toml = true;
    yaml = true;
    database = true;
    web = true;
    ide = true;
  };
}
