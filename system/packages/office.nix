{
  pkgs,
  config,
  lib,
  ...
}:
{
  options = lib.mkOption {
    type = lib.types.bool;
    default = false;
  };

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "slack"
      "teams"
    ];

  config.home.packages = lib.optionals config.s1n7ax.office (
    with pkgs;
    [
      slack
      teams-for-linux
      insomnia
    ]
  );
}
