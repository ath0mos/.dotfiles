{ lib, pkgs, config, ... }: {

  # NETWORK
  # Enabling NetworkManager instead of wpa_supplicant.
  networking.networkmanager.enable = true;
  
  # Setting firewall
  networking.firewall.enable = true;
  networking.firewall.allowPing = false;
  # Defining Hostname
  networking.hostName = "ATH0MOS"; # Define your hostname.


  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

}
