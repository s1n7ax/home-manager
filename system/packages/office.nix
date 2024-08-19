{
  pkgs,
  config,
  lib,
  ...
}:
{
  options.package.office.enable = lib.mkEnableOption "office packages";

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "slack"
      "teams"
    ];

  config = lib.mkIf config.package.office.enable {
    home.packages = with pkgs; [
      slack
      teams-for-linux
      insomnia
    ];
  };
}
