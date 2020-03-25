{ config, pkgs, ... }:

{
  # Installed packages
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs;
    [
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
    ];


  # Preserve space by sacrificing documentation and history
  nix.gc.automatic = true;

  # Configure basic SSH access
  services.openssh.enable = true;
  services.openssh.permitRootLogin = "yes";
  
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
