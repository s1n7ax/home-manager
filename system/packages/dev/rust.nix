{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.dev.rust = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.rust (
    with pkgs;
    [
      cargo
      cargo-leptos
      cargo-generate
      rust-analyzer
      stylance-cli
    ]
  );
}
