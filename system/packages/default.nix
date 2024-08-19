{
  lib,
  settings,
  package-settings,
  ...
}:
let
  get-pkg = name: if package-settings.${name} then [ ./${name}.nix ] else [ ];

  # other packaegs
  camera = get-pkg "camera";
  screen-capture = get-pkg "screen-capture";
  fonts = get-pkg "fonts";
  rust-alternatives = get-pkg "rust-alternatives";
  utility = get-pkg "utility";
  terminal = get-pkg "terminal";
  players = get-pkg "players";
  multi-media = get-pkg "multi-media";
in
{
  options = {
    my.arb.option = lib.mkOption {
      type = lib.types.str;
      default = "test";
    };
  };

  imports =
    [
      ../applications/mpv.nix
      ../applications/${settings.shell}.nix
      ../applications/${settings.wm}.nix

      ../packages/dev/c.nix
      ../packages/dev/container.nix
      ../packages/dev/java.nix
      ../packages/dev/javascript.nix
      ../packages/dev/lua.nix
      ../packages/dev/markdown.nix
      ../packages/dev/nix.nix
      ../packages/dev/python.nix
      ../packages/dev/rust.nix
      ../packages/dev/sh.nix
      ../packages/dev/toml.nix
      ../packages/dev/yaml.nix
      ../packages/dev/database.nix
      ../packages/dev/env.nix
      ../packages/dev/web.nix
      ../packages/dev/ide.nix
    ]

    # other packaegs
    ++ camera
    ++ screen-capture
    ++ fonts
    ++ rust-alternatives
    ++ utility
    ++ terminal
    ++ players
    ++ multi-media;
  # ++ (pkgs.lib.list.optionals settings.multi-media [ ./multi-media.nix ]);
}
