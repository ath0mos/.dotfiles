{ lib, pkgs, config, ... }: {

  # Enabling pulseaudio for TV
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;    ## If compatibility with 32-bit applications is desired

  # OR

  # PIPEWIRE AUDIO
  # sound.enable = true;
  # security.rtkit.enable = true;
  services.pipewire = {
    enable = false;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

}
