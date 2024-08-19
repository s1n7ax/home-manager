{
  lib,
  config,
  pkgs,
  pkgs-devenv,
  pkgs-my,
  ...
}:
{
  options = {
    s1n7ax.dev.container = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.container (
    with pkgs;
    [
      pkgs-devenv.devenv
      pkgs-my.devcontainer
      lazydocker
      dockerfile-language-server-nodejs
      hadolint
    ]
  );

}
