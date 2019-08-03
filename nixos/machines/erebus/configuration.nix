{ config, pkgs, ... }:

{
  imports =
    [
      ../../profiles/personal.nix
      /etc/nixos/hardware-configuration.nix
    ];

  # Wifi drivers
  boot.extraModulePackages = [ config.boot.kernelPackages.rtl8812au ];

  networking.hostName = "erebus";

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

  services.syncthing.openDefaultPorts = true;
  services.syncthing.user = "ross";
  services.syncthing.systemService = false;
  
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
