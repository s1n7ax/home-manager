{
  lib,
  config,
  pkgs,
  ...
}:
{
  options = {
    s1n7ax.dev.javascript = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config.home.packages = lib.optionals config.s1n7ax.dev.javascript (
    with pkgs;
    [
      nodejs_22
      nodePackages.pnpm
      yarn
      emmet-language-server
      vscode-langservers-extracted
      tailwindcss-language-server
      prettierd
      typescript
      eslint_d
      nodePackages.typescript-language-server
    ]
  );

}
