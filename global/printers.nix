{ config, pkgs, ... }:

{
  services.printing = {
    enable = true;

    drivers = with pkgs; [
      brlaser
      gutenprint
      hplipWithPlugin
    ];
  };

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  services.ipp-usb.enable = true;
}
