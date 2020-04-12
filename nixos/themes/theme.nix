let
  currentTheme = import ./base16-solarized-light.nix;
in

with currentTheme;
rec {
  inherit name
    base00
    base01
    base02
    base03
    base04
    base05
    base06
    base07
    base08
    base09
    base0A
    base0B
    base0C
    base0D
    base0E
    base0F;
  xmonadBG = if currentTheme ? xmonadBG then currentTheme.xmonadBG else base01; # Background
  xmonadFB = if currentTheme ? xmonadFB then currentTheme.xmonadFB else base0B; # Focused border
  xmonadNB = if currentTheme ? xmonadNB then currentTheme.xmonadNB else base03; # Focused border
  xmobarBG = if currentTheme ? xmobarBG then currentTheme.xmobarBG else xmonadBG; # Background
}
