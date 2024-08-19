{
  lib,
  config,
  pkgs,
  ...
}:
{

  options = {
    s1n7ax.dev.python = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.python (
    with pkgs;
    [
      (python3.withPackages (py-packages: with py-packages; [ pip ]))
      isort
      black
      virtualenv
    ]
  );
}
