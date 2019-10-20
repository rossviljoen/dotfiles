{ config, pkgs, ... }:

{
  imports =
    [
      ../../modules/common.nix
      ../../modules/xserver.nix
      ../../modules/compton.nix
      /etc/nixos/hardware-configuration.nix
    ];

  # Enable imagemagick support in emacs (has to be built locally).
  nixpkgs.overlays =
    [(self: super: {
      emacs = super.emacs.override {
        imagemagick = pkgs.imagemagickBig;
      };
    }
    )];
  
  environment.systemPackages = let
    myPythonPackages = pythonPackages: with pythonPackages; [
      pip
      setuptools
    ];
    in with pkgs;
    [
      desktop-file-utils
      firefox
      emacs
      anki
      texlive.combined.scheme-full
      jetbrains.idea-ultimate
      haskellPackages.xmobar
      dmenu

      # Haskell development
      haskellPackages.ghc
      haskellPackages.cabal-install
      haskellPackages.cabal2nix

      # Python development
      (python3.withPackages myPythonPackages)
      pipenv
      jetbrains.pycharm-community
    ];
  
  # Wifi drivers
  boot.extraModulePackages = [ config.boot.kernelPackages.rtl8812au ];
  
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
  
  networking.hostName = "erebus";

  hardware.firmware = [ pkgs.firmwareLinuxNonfree ];
  hardware.opengl.enable = true;

  # Enable suspend to RAM
  powerManagement.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  services.xserver = {
    # xrandr --output DVI-D-0 --rotate right --pos 0x0 --output DVI-I-1 --pos 1080x420 --rate 144
    displayManager.lightdm.greeters.mini.user = "ross";
    screenSection = ''
      Option         "metamodes" "DVI-I-1: nvidia-auto-select +1080+420 {ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}, DVI-D-0: nvidia-auto-select +0+0 {rotation=right, ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}"
    '';
    # Prevent screen tearing
    deviceSection = ''
      Option      "TearFree" "true"
    '';
    # Set mouse sens
    inputClassSections =
      [ ''
        Identifier "Logitech Gaming Mouse G303"
        MatchIsPointer "Yes"
        Option "AccelerationScheme" "none"
        Option "Resolution" "800"
        ''
      ];
    # Dual monitor setup
    xrandrHeads = 
      [ { 
        output = "DVI-D-1";
        monitorConfig = 
          ''
              Option "Rotate" "right"
              Option "PreferredMode" "1920x1080"
            '';
      }
        {
          output = "DVI-I-1"; 
          primary = true;
          monitorConfig =
            ''
              Option "PreferredMode" "1920x1080"
              Option "Position" "1080 420"
            '';
        }
      ];
  };

  services.syncthing.enable = true;
  services.syncthing.openDefaultPorts = true;
  services.syncthing.user = "ross";
  services.syncthing.systemService = false;

  # Run emacs as a service
  services.emacs.enable = true;
  services.emacs.defaultEditor = true;
  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ross = {
    createHome = true;
    home = "/home/ross";
    description = "Ross Viljoen";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ and networkmanager for the user.
    useDefaultShell = true;
  };
}
