{ config, pkgs, ... }:

{
  imports =
    [
      ./home.nix
      /etc/nixos/hardware-configuration.nix
    ];

  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = let
    myPythonPackages = pythonPackages: with pythonPackages; [
      pip
      setuptools
      jupyter
      scipy
    ];
    in with pkgs;
      [
        # Utils
        parted
        gparted
        efibootmgr
        gnupg
        git
        wget
        lsof
        rclone
        unzip
        imagemagick
        desktop-file-utils
        networkmanagerapplet
        
        # Basic programs
        firefox
        emacs
        texlive.combined.scheme-full
        slack

        # XMonad and XMobar
        haskellPackages.xmonad
        haskellPackages.xmonad-contrib
        haskellPackages.xmobar
        hsetroot
        dmenu
        feh

        # Haskell
        haskellPackages.ghc
        haskellPackages.cabal-install
        haskellPackages.cabal2nix

        # Python
        (python37.withPackages myPythonPackages)
        jetbrains.pycharm-community

        # OCaml
        # ocaml
        # dune
        # ocamlPackages.merlin
        
        # Other programming
        julia_11
        jetbrains.idea-ultimate
    ];

  # Preserve space by sacrificing documentation and history
  nix.gc.automatic = true;
  
  # Wifi drivers
  boot.extraModulePackages = [ config.boot.kernelPackages.rtl8812au ];

  swapDevices = [ { label = "swap"; } ];
  
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
  networking.networkmanager.enable = true;
  
  hardware.firmware = [ pkgs.firmwareLinuxNonfree ];
  hardware.opengl.enable = true;

  # Enable suspend to RAM
  powerManagement.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;
  
  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Configure basic SSH access
  services.sshd.enable = false;
  services.openssh.enable = false;
  services.openssh.permitRootLogin = "no";

  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "uk";
    defaultLocale = "en_GB.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "Europe/London";

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  services.autorandr.enable = true;
  
  services.xserver = {

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

    enable = true;
    layout = "gb";
    xkbOptions = "eurosign:4";
    videoDrivers = [ "nvidia" "ati" "cirrus" "vesa" "vmware" "modesetting" ];

    # Need this for LightDM to work
    desktopManager.xterm.enable = true;

    # Set up lightdm display manager.
    displayManager = {
      lightdm = {
        enable = true;
        greeters.mini = {
	        user = "ross";
          extraConfig =
            let
              theme = import ./themes/theme.nix;
            in
              ''
                [greeter]
                show-password-label = false
                password-alignment = left
                
                [greeter-hotkeys]
                mod-key = meta
                shutdown-key = u
                restart-key = r
                suspend-key = s
                
                [greeter-theme]
                text-color = "${theme.base06}"
                error-color = "${theme.base0B}"
                background-image = ""
                background-color = "${theme.base01}"
                window-color = "${theme.base00}"
                border-color = "${theme.base04}"
                border-width = 3px
                password-color = "${theme.base06}"
                password-background-color = "${theme.base03}"
              '';
          enable = true;
        };
      };
    };
  };
  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ross = {
    createHome = true;
    home = "/home/ross";
    description = "Ross Viljoen";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ and networkmanager for the user.
    useDefaultShell = true;
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.09"; # Did you read the comment?
}
