{ lib, pkgs, config, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Daily Apps
    neovim

    wget
    firefox
    zip
    unzip
    git
    neofetch
    thunderbird

    # Needed compiler for nvim
    clang
    gcc
    cmake

    # File Manager
    #thunar # With GUI
    #pacmanfm
    ranger

    # VPN
    openconnect

    # Passwort-Manager
    keepassxc

    # Wayland related pkgs
    (pkgs.waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true"];
    })
    )

    # Screen Lock
    hyprlock

    # Screenshot-Tool
    hyprshot

    # Notification-Daemon
    pkgs.mako
    libnotify

    # Media control
    playerctl
    pamixer

    # Display network-manager for waybar
    pkgs.networkmanagerapplet

    # Wallpaper-Daemon
    swww

    # Terminal Emulator
    kitty

    # Uplauncher
    rofi-wayland
  ];
}
