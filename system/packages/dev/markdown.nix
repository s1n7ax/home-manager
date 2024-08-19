{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.dev.markdown = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.markdown (
    with pkgs;
    [
      cbfmt
      marksman
      markdownlint-cli
      markdownlint-cli2
      python311Packages.mdformat
    ]
  );
}
