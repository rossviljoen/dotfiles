# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
  
  # Installed packages
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs;
    [ 
      parted
      gparted
      efibootmgr
      
      git
      wget
      desktop-file-utils
      
      firefox
      emacs
      jetbrains.idea-ultimate
      anki
      texlive.combined.scheme-full

      # Haskell packages
      # Packages for xmonad
      haskellPackages.xmobar
      dmenu

      hsetroot
      feh
    ];

  # Only keep last 500MiB of systemd journal
  services.journald.extraConfig = "SystemMaxUse=500M";

  # Collect nix store garbage and optimise daily
  nix.gc.automatic = true;
  nix.optimise.automatic = true;

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";

  # Autodetect MSWindows in boot loader
  boot.loader.grub = {
    enable = true;
    device = "nodev";
    efiSupport = true;
    version = 2;
    useOSProber = true;
  };

  swapDevices = [ { label = "swap1"; } ];
  
  # Wifi drivers
  boot.extraModulePackages = [ config.boot.kernelPackages.rtl8812au ];
  hardware.firmware = [ pkgs.firmwareLinuxNonfree ];
  hardware.opengl.enable = true;

  # networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  # Enable suspend to RAM
  powerManagement.enable = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n = {
     consoleFont = "Lat2-Terminus16";
     consoleKeyMap = "uk";
     defaultLocale = "en_GB.UTF-8";
   };

  # Set your time zone.
  time.timeZone = "Europe/London";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # environment.systemPackages = with pkgs; [
  #   wget vim
  # ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    layout = "gb";
    videoDrivers = [ "nvidia" ];
    windowManager.xmonad.enable = true;
    windowManager.xmonad.enableContribAndExtras = true;
    windowManager.default = "xmonad";
    desktopManager.session =
      [ {
         name = "custom";
         bgSupport = true;
         start = ''
           hsetroot -solid "#4c566a"
         '';
         # xrandr --output DVI-D-0 --rotate right --pos 0x0 --output DVI-I-1 --pos 1080x420 --rate 144
        }
      ];
    desktopManager.default = "custom";
    displayManager = {
        lightdm = {
        enable = true;
        greeters.mini = {
          extraConfig = ''
            [greeter]
            show-password-label = false
            password-alignment = left

            [greeter-hotkeys]
            mod-key = meta
            shutdown-key = u
            restart-key = r
            suspend-key = s

            [greeter-theme]
            text-color = "#eceff4"
            error-color = "#bf616a"
            background-image = ""
            background-color = "#4c566a"
            window-color = "#2e3440"
            border-color = "#d8dee9"
            border-width = 3px
            password-color = "#eceff4"
            password-background-color = "#4c566a"
          '';
          enable = true;
          user = "ross";
        };
      };
    };

    screenSection = ''
      Option         "metamodes" "DVI-I-1: nvidia-auto-select +1080+420 {ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}, DVI-D-0: nvidia-auto-select +0+0 {rotation=right, ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}"
    '';
#      Option         "Stereo" "0"
#      Option         "nvidiaXineramaInfoOrder" "DFP-0"
#      Option         "SLI" "Off"
#      Option         "BaseMosaic" "off"
#      Option         "MultiGPU" "Off"
#      Identifier     "Screen0"
#      Device         "Device0"
#      Monitor        "Monitor0"
#      DefaultDepth    24
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

  # Compton compositor settings
  services.compton = {
    enable = true;
    shadow = true;
    backend = "glx";
    shadowExclude = [ "window_type *= 'menu'" ];
    vSync = "opengl-swc";
    extraOptions = ''
      glx-no-stencil = true;

      # GLX backend: Copy unmodified regions from front buffer instead of redrawing them all.
      # My tests with nvidia-drivers show a 10% decrease in performance when the whole screen is modified,
      # but a 20% increase when only 1/4 is.
      # My tests on nouveau show terrible slowdown.
      # Useful with --glx-swap-method, as well.
      glx-copy-from-front = false;

      # GLX backend: Use MESA_copy_sub_buffer to do partial screen update.
      # My tests on nouveau shows a 200% performance boost when only 1/4 of the screen is updated.
      # May break VSync and is not available on some drivers.
      # Overrides --glx-copy-from-front.
      # glx-use-copysubbuffermesa = true;

      # GLX backend: Avoid rebinding pixmap on window damage.
      # Probably could improve performance on rapid window content changes, but is known to break things on some drivers (LLVMpipe).
      # Recommended if it works.
      # glx-no-rebind-pixmap = true;


      # GLX backend: GLX buffer swap method we assume.
      # Could be undefined (0), copy (1), exchange (2), 3-6, or buffer-age (-1).
      # undefined is the slowest and the safest, and the default value.
      # copy is fastest, but may fail on some drivers,
      # 2-6 are gradually slower but safer (6 is still faster than 0).
      # Usually, double buffer means 2, triple buffer means 3.
      # buffer-age means auto-detect using GLX_EXT_buffer_age, supported by some drivers.
      # Useless with --glx-use-copysubbuffermesa.
      # Partially breaks --resize-damage.
      # Defaults to undefined.
      glx-swap-method = "undefined";

      # Mark all non-WM but override-redirect windows active (e.g. menus).
      mark-ovredir-focused = true;
      # Use EWMH _NET_WM_ACTIVE_WINDOW to determine which window is focused instead of using FocusIn/Out events.
      # Usually more reliable but depends on a EWMH-compliant WM.
      use-ewmh-active-win = true;
      # Detect rounded corners and treat them as rectangular when --shadow-ignore-shaped is on.
      detect-rounded-corners = true;

      # Detect _NET_WM_OPACITY on client windows, useful for window managers not passing _NET_WM_OPACITY of client windows to frame windows.
      # This prevents opacity being ignored for some apps.
      # For example without this enabled my xfce4-notifyd is 100% opacity no matter what.
      detect-client-opacity = true;

      # Specify refresh rate of the screen.
      # If not specified or 0, compton will try detecting this with X RandR extension.
      refresh-rate = 0;

      # Enable DBE painting mode, intended to use with VSync to (hopefully) eliminate tearing.
      # Reported to have no effect, though.
      dbe = true;
      # Painting on X Composite overlay window. Recommended.
      paint-on-overlay = true;

      # Limit compton to repaint at most once every 1 / refresh_rate second to boost performance.
      # This should not be used with --vsync drm/opengl/opengl-oml as they essentially does --sw-opti's job already,
      # unless you wish to specify a lower refresh rate than the actual value.
      sw-opti = false;

      # Unredirect all windows if a full-screen opaque window is detected, to maximize performance for full-screen windows, like games.
      # Known to cause flickering when redirecting/unredirecting windows.
      # paint-on-overlay may make the flickering less obvious.
      unredir-if-possible = true;dbe = true;
      paint-on-overlay = true;

    '';
  };

  # services.xserver.xkbOptions = "eurosign:e";

  # Enable touchpad support.
  # services.xserver.libinput.enable = true;

  # Enable the KDE Desktop Environment.
  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;

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

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
