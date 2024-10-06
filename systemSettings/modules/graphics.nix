{ lib, pkgs, config, ... }: {

  # Enable Wayland-Compositor
  programs.hyprland = {
    enable = true;
  };

  # Sharing screen
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];
  xdg.portal.wlr.enable = true;

  # AMD enabling OpenCL
  hardware.opengl.extraPackages = [
    pkgs.amdvlk
  ];

    # To enable Vulkan support for 32-bit applications, also add:
  hardware.opengl.extraPackages32 = [
    pkgs.driversi686Linux.amdvlk
  ];

}
