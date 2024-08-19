{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.dev.toml = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.toml (with pkgs; [ taplo ]);
}
