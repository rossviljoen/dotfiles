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
  
  boot.loader = {
    # Use the systemd-boot EFI boot loader.
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    efi.efiSysMountPoint = "/boot";
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      version = 2;
      # Autodetect MSWindows in boot loader
      useOSProber = true;
    };
  };

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
