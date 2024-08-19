{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.players = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.players (with pkgs; [ vlc ]);
}
