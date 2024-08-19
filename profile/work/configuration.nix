{ settings, ... }:
{
  imports = [
    ./git.nix
    ../../system/packages/default.nix
  ];

  package = {
    office.enable = true;

    dev = {
      container.enable = true;
      javascript.enable = true;
      lua.enable = true;
      markdown.enable = true;
      nix.enable = true;
      database.enable = true;
      web.enable = true;
    };
  };

  home.username = settings.username;
  home.homeDirectory = "/home/${settings.username}";
  home.stateVersion = "24.05";
}
