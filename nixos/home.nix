{ config, pkgs, ... }:

# Can definitely clean up this import garbage
with import <nixpkgs> {};
with builtins;
with lib;
with import <home-manager/modules/lib/dag.nix> { inherit lib; };

let
  theme = import ./themes/theme.nix;
  bgCommand = "${hsetroot}/bin/hsetroot -solid '${theme.xmonadBG}'";
in

{
  imports = [
    <home-manager/nixos>
  ];

  home-manager.users.ross = { pkgs, ... }: {

    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
      ocamlPackages.merlin
      ocamlPackages.ocp-indent
      ocamlPackages.utop
      
      spotify
      simplescreenrecorder
    ];

    nixpkgs.overlays =
      [(self: super: {
        emacs = super.emacs.override {
          imagemagick = pkgs.imagemagickBig;
        };
      })];

    services.lorri.enable = true;

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

    programs.urxvt = {
      enable = true;
      scroll.bar.enable = false;
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
      keyboard = {
        layout = "gb";
        options = [ "ctrl:swapcaps" ];
      };
      
      sessionVariables = {
        EDITOR = "emacsclient -c -a emacs";
        VISUAL = "emacsclient -c -a emacs";
        THEME = theme.name;
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

    xresources = {
      extraConfig = 
        ''
          #define base00 ${theme.base00}
          #define base01 ${theme.base01}
          #define base02 ${theme.base02}
          #define base03 ${theme.base03}
          #define base04 ${theme.base04}
          #define base05 ${theme.base05}
          #define base06 ${theme.base06}
          #define base07 ${theme.base07}
          #define base08 ${theme.base08}
          #define base09 ${theme.base09}
          #define base0A ${theme.base0A}
          #define base0B ${theme.base0B}
          #define base0C ${theme.base0C}
          #define base0D ${theme.base0D}
          #define base0E ${theme.base0E}
          #define base0F ${theme.base0F}
          #define xmonadBG ${theme.xmonadBG}
          #define xmonadFB ${theme.xmonadFB}
          #define xmonadNB ${theme.xmonadNB}
          #define xmobarBG ${theme.xmobarBG}

          *foreground:  base05
          *background:  base00
          *cursorColor: base05

          *xmonadFocused:     xmonadFB
          *xmonadNonFocused:  xmonadNB
          *xmobarBackground:  xmobarBG

          *color0:    base00
          *color1:    base08
          *color2:    base0B
          *color3:    base0A
          *color4:    base0D
          *color5:    base0E
          *color6:    base0C
          *color7:    base05

          *color8:    base03
          *color9:    base08
          *color10:   base0B
          *color11:   base0A
          *color12:   base0D
          *color13:   base0E
          *color14:   base0C
          *color15:   base07

          *color16:   base09
          *color17:   base0F
          *color18:   base01
          *color19:   base02
          *color20:   base04
          *color21:   base06
        '';
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
