{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.dev.lua = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.lua (
    with pkgs;
    [
      stylua
      lua-language-server
      # luajitPackages.luacheck
    ]
  );
}
