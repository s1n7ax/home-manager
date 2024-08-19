{ settings, ... }:
{
  imports = [
    ./git.nix
    ../../system/packages/default.nix
  ];

  home.username = settings.username;
  home.homeDirectory = "/home/${settings.username}";
  home.stateVersion = "24.05";

  s1n7ax = {
    camera = true;
    screen-capture = true;
    players = true;
    multi-media = true;

    dev = {
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
  };

}
