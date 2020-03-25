{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
    [ hsetroot ];

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    layout = "gb";
    xkbOptions = "eurosign:4";
    videoDrivers = [ "nvidia" "ati" "cirrus" "vesa" "vmware" "modesetting" ];
    # windowManager.xmonad.enable = true;
    # windowManager.xmonad.enableContribAndExtras = true;
    # windowManager.default = "xmonad";

    # # Custom desktop manager to set background.
    # desktopManager.session =
    #   [ {
    #     name = "custom";
    #     bgSupport = true;
    #     start = ''
    #        hsetroot -solid "#4c566a"
    #      '';
    #   }
    #   ];
    # desktopManager.default = "custom";

    # # Set up lightdm display manager.
    # displayManager = {
    #   lightdm = {
    #     enable = true;
    #     greeters.mini = {
    #       extraConfig = ''
    #         [greeter]
    #         show-password-label = false
    #         password-alignment = left

    #         [greeter-hotkeys]
    #         mod-key = meta
    #         shutdown-key = u
    #         restart-key = r
    #         suspend-key = s

    #         [greeter-theme]
    #         text-color = "#eceff4"
    #         error-color = "#bf616a"
    #         background-image = ""
    #         background-color = "#4c566a"
    #         window-color = "#2e3440"
    #         border-color = "#d8dee9"
    #         border-width = 3px
    #         password-color = "#eceff4"
    #         password-background-color = "#4c566a"
    #       '';
    #       enable = true;
    #     };
    #   };
    # };
    
    # Prevent screen tearing
    deviceSection = ''
      Option      "TearFree" "true"
    '';
  };
}
