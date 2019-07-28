{ config, pkgs, ... }:

{
  imports =
    [
      ../../profiles/server.nix
      /etc/nixos/hardware-configuration.nix
    ];

  # NixOS wants to enable GRUB by default
  boot.loader.grub.enable = false;
  # Enables the generation of /boot/extlinux/extlinux.conf
  boot.loader.generic-extlinux-compatible.enable = true;

  # For a Raspberry Pi 2 or 3:
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # !!! Needed for the virtual console to work on the RPi 3, as the default of 16M doesn't seem to be enough.
  # If X.org behaves weirdly (I only saw the cursor) then try increasing this to 256M.
  boot.kernelParams = ["cma=32M"];

  # File systems configuration for using the installer's partition layout
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXOS_SD";
      fsType = "ext4";
    };
  };

  hardware.enableRedistributableFirmware = true; # Enable support for Pi firmware blobs

  networking.hostName = "nixosPi";     # Define your hostname.

  # Configure users for your Pi:
  users.mutableUsers = false;     # Remove any users not defined in here

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
