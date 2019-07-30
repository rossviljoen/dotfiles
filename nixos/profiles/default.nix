{ config, pkgs, ... }:

{
  imports =
    [
      ../modules/common.nix
    ];
  
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
      gitAndTools.git-annex
      gitAndTools.git-annex-remote-rclone
    ];
}
