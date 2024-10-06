{ lib, pkgs, config, ... }: {

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    packages = with pkgs; [terminus_font font-awesome];
    keyMap = "us";
  };

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    font-awesome
  ];

}
