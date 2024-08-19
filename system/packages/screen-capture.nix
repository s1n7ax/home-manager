{
  lib,
  config,
  pkgs,
  ...
}:
{

  imports = [ ../applications/obs-studio ];

  options = {
    s1n7ax.screen-capture = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.screen-capture (
    with pkgs;
    [
      grim
      slurp
    ]
  );
}
