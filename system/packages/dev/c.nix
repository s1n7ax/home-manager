{
  lib,
  pkgs,
  config,
  ...
}:
{
  options = {
    s1n7ax.dev.c = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.c (
    with pkgs;
    [
      gcc
      gnumake
    ]
  );
}
