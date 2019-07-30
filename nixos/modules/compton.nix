{ config, pkgs, ... }:

{
# Compton compositor settings
  services.compton = {
    enable = true;
    shadow = true;
    backend = "glx";
    shadowExclude = [ "window_type *= 'menu'" ];
    vSync = "opengl-swc";
    extraOptions = ''
      glx-no-stencil = true;

      # GLX backend: Copy unmodified regions from front buffer instead of redrawing them all.
      # My tests with nvidia-drivers show a 10% decrease in performance when the whole screen is modified,
      # but a 20% increase when only 1/4 is.
      # My tests on nouveau show terrible slowdown.
      # Useful with --glx-swap-method, as well.
      glx-copy-from-front = false;

      # GLX backend: GLX buffer swap method we assume.
      # Could be undefined (0), copy (1), exchange (2), 3-6, or buffer-age (-1).
      # undefined is the slowest and the safest, and the default value.
      # copy is fastest, but may fail on some drivers,
      # 2-6 are gradually slower but safer (6 is still faster than 0).
      # Usually, double buffer means 2, triple buffer means 3.
      # buffer-age means auto-detect using GLX_EXT_buffer_age, supported by some drivers.
      # Useless with --glx-use-copysubbuffermesa.
      # Partially breaks --resize-damage.
      # Defaults to undefined.
      glx-swap-method = "undefined";

      # Mark all non-WM but override-redirect windows active (e.g. menus).
      mark-ovredir-focused = true;
      # Use EWMH _NET_WM_ACTIVE_WINDOW to determine which window is focused instead of using FocusIn/Out events.
      # Usually more reliable but depends on a EWMH-compliant WM.
      use-ewmh-active-win = true;
      # Detect rounded corners and treat them as rectangular when --shadow-ignore-shaped is on.
      detect-rounded-corners = true;

      # Detect _NET_WM_OPACITY on client windows, useful for window managers not passing _NET_WM_OPACITY of client windows to frame windows.
      # This prevents opacity being ignored for some apps.
      # For example without this enabled my xfce4-notifyd is 100% opacity no matter what.
      detect-client-opacity = true;

      # Specify refresh rate of the screen.
      # If not specified or 0, compton will try detecting this with X RandR extension.
      refresh-rate = 0;

      # Enable DBE painting mode, intended to use with VSync to (hopefully) eliminate tearing.
      # Reported to have no effect, though.
      dbe = true;
      # Painting on X Composite overlay window. Recommended.
      paint-on-overlay = true;

      # Limit compton to repaint at most once every 1 / refresh_rate second to boost performance.
      # This should not be used with --vsync drm/opengl/opengl-oml as they essentially does --sw-opti's job already,
      # unless you wish to specify a lower refresh rate than the actual value.
      sw-opti = false;

      # Unredirect all windows if a full-screen opaque window is detected, to maximize performance for full-screen windows, like games.
      # Known to cause flickering when redirecting/unredirecting windows.
      # paint-on-overlay may make the flickering less obvious.
      unredir-if-possible = true;dbe = true;
      paint-on-overlay = true;

    '';
  };
}
