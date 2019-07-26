{ config, pkgs, ... }:

{
  imports =
    [
      ./personal.nix
    ];
  
  # Enable touchpad support.
  services.xserver.libinput.enable = true;
}
