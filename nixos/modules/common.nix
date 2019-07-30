{ config, pkgs, ... }:

{
  # Only keep last 500MiB of systemd journal
  services.journald.extraConfig = "SystemMaxUse=500M";

  # Collect nix store garbage and optimise daily
  nix.gc.automatic = true;
  nix.optimise.automatic = true;
  
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
  
  swapDevices = [ { label = "swap1"; } ];

  networking.networkmanager.enable = true;

  # Enable the OpenSSH server.
  services.sshd.enable = true;

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

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?
}
