{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.dev.ide = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.ide (with pkgs; [ zed-editor ]);
}
