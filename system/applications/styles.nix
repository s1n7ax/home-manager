{ pkgs, ... }:
{
  gtk = {
    enable = true;
    iconTheme = {
      name = "breeze-dark";
      package = pkgs.libsForQt5.breeze-icons;
    };
    theme = {
      name = "Breeze-Dark";
      package = pkgs.libsForQt5.breeze-gtk;
    };

    cursorTheme = {
      name = "Bibata-Modern-Ice";
      size = 32;
    };
  };

  qt = {
    style = {
      name = "Breeze-Dark";
      package = pkgs.libsForQt5.breeze-qt5;
    };
  };
}
