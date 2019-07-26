{ config, pkgs, ... }:

{
  imports =
    [
      ./default.nix
      ../modules/xserver.nix
      ../modules/compton.nix
    ];

  environment.systemPackages = with pkgs;
    [ 
      desktop-file-utils
      firefox
      emacs
      anki
      texlive.combined.scheme-full
      jetbrains.idea-ultimate
      haskellPackages.xmobar
      dmenu
    ];
  
  hardware.firmware = [ pkgs.firmwareLinuxNonfree ];
  hardware.opengl.enable = true;

  # Enable suspend to RAM
  powerManagement.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Run emacs as a service
  services.emacs.enable = true;
  services.emacs.defaultEditor = true;
}
