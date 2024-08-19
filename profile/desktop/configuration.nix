{ settings, ... }:
{
  imports = [
    ./git.nix
    ../../system/packages/default.nix
  ];

  package = {
    camera.enable = true;
    screen-capture.enable = true;
    players.enable = true;
    multi-media.enable = true;

    dev = {
      c.enable = true;
      container.enable = true;
      java.enable = true;
      javascript.enable = true;
      lua.enable = true;
      markdown.enable = true;
      nix.enable = true;
      python.enable = true;
      rust.enable = true;
      sh.enable = true;
      toml.enable = true;
      yaml.enable = true;
      database.enable = true;
      web.enable = true;
      ide.enable = true;
    };
  };

  home.username = settings.username;
  home.homeDirectory = "/home/${settings.username}";
  home.stateVersion = "24.05";
}
