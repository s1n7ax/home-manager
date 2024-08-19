{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.multi-media = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.multi-media (
    with pkgs;
    [
      gimp
      handbrake
    ]
  );

}
