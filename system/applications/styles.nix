{ settings, pkgs, ... }:
{
  gtk = {
    enable = true;
    iconTheme = {
      name = "Tela-circle-dark";
      package = pkgs.tela-circle-icon-theme;
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
