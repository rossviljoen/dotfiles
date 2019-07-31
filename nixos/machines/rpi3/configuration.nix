{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs;
    [
      rclone
      fuse
    ];

  # NixOS wants to enable GRUB by default
  boot.loader.grub.enable = false;
  # Enables the generation of /boot/extlinux/extlinux.conf
  boot.loader.generic-extlinux-compatible.enable = true;
 
  # !!! Otherwise (even if you have a Raspberry Pi 2 or 3), pick this:
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # !!! Needed for the virtual console to work on the RPi 3, as the default of 16M doesn't seem to be enough.
  # If X.org behaves weirdly (I only saw the cursor) then try increasing this to 256M.
  boot.kernelParams = ["cma=32M"];
    
  # File systems configuration for using the installer's partition layout
  fileSystems = {
  #  "/boot" = {
  #    device = "/dev/disk/by-label/NIXOS_BOOT";
  #    fsType = "vfat";
  #  };
    "/" = {
      device = "/dev/disk/by-label/NIXOS_SD";
      fsType = "ext4";
    };
  };

  documentation.nixos.enable = false;
  nix.gc.automatic = true;
  boot.cleanTmpDir = true;
  
  networking.hostName = "nixosPi";
  networking.firewall.allowedTCPPorts = [ 8384 ];
  networking.wireless.enable = true;
  networking.wireless.networks = {
    TALKTALK805C7A = {
      psk = "EEDG7HDQ";
    };
  };

    # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "uk";
    defaultLocale = "en_GB.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "Europe/London";

  hardware.enableRedistributableFirmware = true;
  
  services.openssh.enable = true;
  services.openssh.permitRootLogin = "yes";

  services.syncthing = {
    enable = true;
    systemService = true;
    user = "ross";
    group = "wheel";
    dataDir = "/home/ross/org";
    guiAddress = "0.0.0.0:8384";
    openDefaultPorts = true;
  };

  systemd.services.rclone = {
    description = "Mount rclone OneDrive.";
    wantedBy = [ "multi-user.target" ];
#    unitConfig = {
#      AssertPathIsDirectory = "/home/ross/org";
#    };
    path = [ pkgs.fuse ];
    serviceConfig = {
      After = "network-online.target";
      Type = "simple";
      User = "ross";
      Group = "users";
      ExecStart = "${pkgs.bash}/bin/bash -c 'source ${config.system.build.setEnvironment}; exec ${pkgs.rclone}/bin/rclone mount --allow-other --allow-non-empty SotonOneDrive:org /home/ross/org'";
      ExecStop = "${pkgs.fuse}/bin/fusermount -u /home/ross/org";
      Restart = "always";
      RestartSec = "10";
    };
  };

  environment.etc."fuse.conf".text = "user_allow_other\n";
  
  users.users.ross = {
    isNormalUser = true;
    uid = 1000;
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB+FLbtoO27VN6oC8vaMcrV6vmwN1ywv+uKd9OwTXp3BAE3kszuqxe+DkvkDRQMKy5ZKndhh3DwRAfkyIK66WdRA1wwxT21B3//Ij8WeViT7yH74Ea3ubKNJhUXedizB4aAkpt1aHumhQsXNdn3zuF+0n0ORoMMk8Ej2F8hBI/A76WJ38fSRyLfuMDt6MQNMoo1Bbpq3lkMDErlr5xYmzeuYdJLiBsPMd7O7S8jqc9fFoLhnltbZ6RL2PnsWVcztWkmjNwDPPIWV80oiQuoYDMWP5YEfmgZHL9gZc2ho4bz2h6RUfUG86qL90P1svYUKorXqwpuKkbebu3bBWnjE99 ross@nixos"
    ];
  };
    
  # !!! Adding a swap file is optional, but strongly recommended!
  swapDevices = [ { device = "/swapfile"; size = 1024; } ];

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
