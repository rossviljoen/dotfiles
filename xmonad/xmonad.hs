import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Spacing
import XMonad.Layout.PerWorkspace
import qualified XMonad.StackSet as W
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Config.Kde
import XMonad.Layout.IndependentScreens
import XMonad.Layout.BinarySpacePartition
import XMonad.Hooks.SetWMName
import System.IO

main = do
  xmprocl <- spawnPipe "xmobar -x 0"
  xmprocr <- spawnPipe "xmobar -x 1"
  xmonad $ docks myConfig
    { logHook = let log screen handle = dynamicLogWithPP . marshallPP screen . myXmobarPP $ handle
                    in log 0 xmprocl >> log 1 xmprocr
    }

virtualWorkspaces = ["i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix", "x"]
myWorkspaces = withScreens 2 virtualWorkspaces

myLayoutHook = spacingRaw True (Border 8 0 8 8) True (Border 8 8 8 8) True $
  onWorkspaces (map (marshall 1) virtualWorkspaces) (Mirror tall ||| tall ||| Full) $ 
  layoutHook def
  -- onWorkspace "ii" (Mirror tall ||| tall ||| Full) $
  -- (tall ||| Mirror tall ||| Full)
  where
    tall = Tall 1 (3/100) (1/2)

-- Rebind Mod to the Windows key
myModMask = mod4Mask
               
myXmobarPP handle = def
  { ppOutput = hPutStrLn handle
  , ppCurrent = xmobarColor "{{base0D}}" "" . wrap "[" "]"
  , ppTitle = xmobarColor "{{base0E}}" "" . shorten 80
  }

myConfig = def
  { manageHook = manageDocks <+> manageHook def
  -- , layoutHook = myLayoutHook
  , startupHook = setWMName "LG3D"
  , layoutHook = avoidStruts $ myLayoutHook
  , workspaces = myWorkspaces
  , modMask = myModMask
  , focusedBorderColor = "{{xmonadFB}}"
  , normalBorderColor = "{{xmonadNB}}"
  , borderWidth = 4
  } `additionalKeys` myKeys

myKeys =
  [ ((myModMask .|. mod1Mask, xK_l), spawn "loginctl lock-session")
  , ((myModMask .|. mod1Mask, xK_u), spawn "shutdown now")
  , ((myModMask .|. mod1Mask, xK_s), spawn "systemctl suspend &")
  , ((myModMask, xK_b), sendMessage ToggleStruts)
  , ((myModMask .|. mod1Mask, xK_l), spawn "dm-tool lock")
  , ((0, xK_F9), spawn "emacsclient -c -n -e '(switch-to-buffer nil)'")
  , ((0, xK_F10), spawn "firefox")
  , ((myModMask , xK_c), kill)
  ] ++
    
    -- Switch to workspace N, M-[1..9]
    [((m .|. myModMask, k), windows $ onCurrentScreen f i)
        | (i, k) <- zip (workspaces' myConfig) [xK_1 .. xK_9]
    -- Move window to workspace N 
         , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]] ++
    
    -- Switch to screen N, M-{w,e,r}
    [((m .|. myModMask, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0, 1, 2]
    -- Move window to screen N
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

toggleStrutsKey :: XConfig t -> (KeyMask, KeySym)
toggleStrutsKey XConfig{modMask = modm} = (modm, xK_b)
