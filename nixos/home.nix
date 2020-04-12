{ config, pkgs, ... }:

# Can definitely clean up this import garbage
with import <nixpkgs> {};
with builtins;
with lib;
with import <home-manager/modules/lib/dag.nix> { inherit lib; };

let
  theme = import ./themes/theme.nix;
  bgCommand = "${hsetroot}/bin/hsetroot -solid '${theme.base01}'";
in

{
  imports = [
    <home-manager/nixos>
  ];

  home-manager.users.ross = { pkgs, ... }: {

    nixpkgs.overlays =
      [(self: super: {
        emacs = super.emacs.override {
          imagemagick = pkgs.imagemagickBig;
        };
      })];

    services.compton = {
      enable = true;
      shadow = true;
    };

    services.gnome-keyring.enable = true;

    services.emacs.enable = true;
    programs.emacs.enable = true;
    
    programs.home-manager.enable = true;

    programs.git = {
      package = pkgs.gitAndTools.gitFull;
      enable = true;
      userName = "Ross Viljoen";
      userEmail = "ross@viljoen.co.uk";
    };

    programs.bash = {
      enable = true;
    };

    programs.direnv = {
      enable = true;
      enableBashIntegration = true;
    };

    programs.opam = {
      enable = true;
      enableBashIntegration = true;
    };

    programs.autorandr = {
      enable = true;
      profiles = {
        "vertical-right" = {
          fingerprint = {
            DVI-D-0 = "00ffffffffffff0022f007310101010129180103803c22782a53a5a756529c26115054a10800d1c081c081809500a9c0b30001010101023a801871382d40582c450058542100001e000000fd00324c185e11000a202020202020000000fc0048502045323731690a20202020000000ff0033434d343431304637380a2020008a";
            DVI-I-1 = "00ffffffffffff0009d1317f455400001919010380351e782e9de1a654549f260d5054a56b80d1c0457c617c818081bc953c317c0101023a801871382d40582c4500132a2100001e000000ff003336463037323934534c300a20000000fd0038901ea021000a202020202020000000fc0042656e5120584c323431315a0a01d802010400fe5b80a07038354030203500132a2100001a866f80a07038404030203500132a2100001afc7e80887038124018203500132a2100001e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7";
          };
          config = {
            DVI-D-0 = {
              enable = true;
              mode = "1920x1080";
              position = "1920x0";
              rate = "60.00";
              rotate = "left";
            };
            DVI-I-1 = {
              enable = true;
              mode = "1920x1080";
              position = "0x420";
              rate = "144.00";
            };
          };
        };
      };
    };

    home = {
      keyboard.layout = "gb";
      
      sessionVariables = {
        EDITOR = "emacsclient -c -a emacs";
        VISUAL = "emacsclient -c -a emacs";
        B16THEME = theme.name;
      };
      
      file =
        let
          doubleBracket = names : map (str: "{{" + str + "}}") names;
        in
          
        {
        ".emacs.d/init.el" = {
          source = ../.emacs.d/init.el;
        };

        ".config/xmonad/xmonad.hs" = {
          text = replaceStrings (doubleBracket (attrNames theme)) (attrValues theme) (readFile ../xmonad/xmonad.hs);
        };

        ".config/xmobar/xmobarrc" = {
          text = replaceStrings (doubleBracket (attrNames theme)) (attrValues theme) (readFile ../xmobarrc);
        };
      };

      activation = {
        # Makes sure XMonad puts its shit in XDG places
        xmonadXDGCleanup = dagEntryAfter ["writeBoundary"] ''
          $DRY_RUN_CMD mkdir -p $VERBOSE_ARG $HOME/.local/share/xmonad;
        '';
      };
    };

    xsession = {
      enable = true;
      numlock.enable = true;
      initExtra = ''
        ${bgCommand};
        autorandr -c
      '';
      
      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
      };
    };
  };
}
