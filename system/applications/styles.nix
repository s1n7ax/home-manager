{ settings, pkgs, ... }:
{
  gtk = {
    enable = true;
    iconTheme = {
      inherit (settings.icon) name package;
    };
    theme = {
      name = "Breeze-Dark";
      package = pkgs.libsForQt5.breeze-gtk;
    };

    cursorTheme = {
      inherit (settings.cursor) name package size;
    };
  };

  qt = {
    style = {
      name = "Breeze-Dark";
      package = pkgs.libsForQt5.breeze-qt5;
    };
  };
}
