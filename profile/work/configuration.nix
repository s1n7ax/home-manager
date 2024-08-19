{ settings, ... }:
{
  imports = [
    ./git.nix
    ../../system/packages/default.nix
  ];

  s1n7ax = {
    office = true;

    dev = {
      container = true;
      javascript = true;
      lua = true;
      markdown = true;
      nix = true;
      database = true;
      web = true;
    };
  };

  home.username = settings.username;
  home.homeDirectory = "/home/${settings.username}";
  home.stateVersion = "24.05";
}
