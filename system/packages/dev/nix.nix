{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.dev.nix = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.nix (
    with pkgs;
    [
      nixpkgs-fmt
      nil
      nixfmt-rfc-style
    ]
  );

}
