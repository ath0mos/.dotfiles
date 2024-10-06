{ lib, pkgs, config, ... }: {

  users.users.ath0mos_ = {
    isNormalUser = true;
    home = "/home/ath0mos_";
    extraGroups = [ "wheel" "networkmanager" "shared" "audio" ]; # Audio group for Pulseaudio 
    packages = with pkgs; [
      firefox
      tree
    ];
  };

  users.users.test = {
    isNormalUser = true;
    home = "/home/test";
    extraGroups = [ "wheel" "networkmanager" "shared" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      cron
      eww   
    ];
  };

}
