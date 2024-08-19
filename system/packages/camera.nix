{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.camera = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.camera (with pkgs; [ gphoto2 ]);
}
