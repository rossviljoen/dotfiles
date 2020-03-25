import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Spacing
import XMonad.Layout.PerWorkspace
import qualified XMonad.StackSet as W
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmonad =<< statusBar "xmobar" myXmobarPP toggleStrutsKey myConfig

myWorkspaces = ["i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix", "x"]

-- Rebind Mod to the Windows key
myModMask = mod4Mask

myLayoutHook = spacingRaw True (Border 0 8 8 8) True (Border 8 8 8 8) True $
               onWorkspace "ii" (Mirror tall ||| tall ||| Full) $
               (tall ||| Mirror tall ||| Full)
               where
                 tall = Tall 1 (3/100) (1/2)
                 
myXmobarPP = def { ppCurrent = xmobarColor "#ebcb8b" "" . wrap "[" "]"
                 , ppTitle = xmobarColor "#a3be8c" "" . shorten 80
                 }
  

myConfig = defaultConfig
    { manageHook = manageDocks <+> manageHook defaultConfig
    , layoutHook = myLayoutHook
    , workspaces = myWorkspaces
    , modMask = myModMask     
    , focusedBorderColor = "#bf616a"
    , normalBorderColor = "#4c566a"
    , borderWidth = 4
    } `additionalKeys` myKeys

myKeys =
    -- Lock screen
    [ ((myModMask .|. mod1Mask, xK_l), spawn "dm-tool lock")
    , ((myModMask .|. mod1Mask, xK_u), spawn "shutdown now")
    , ((myModMask .|. mod1Mask, xK_s), spawn "systemctl suspend &")
    , ((0, xK_F9), spawn "emacsclient -c -n -e '(switch-to-buffer nil)'")
    , ((0, xK_F10), spawn "firefox")
    , ((0, xK_F11), spawn "anki")
    , ((myModMask , xK_c), kill)
    ] ++
    -- Switch to workspace N, M-[1..9]
    [((m .|. myModMask, k), windows $ f i)
         | (i, k) <- zip myWorkspaces [xK_1 .. xK_9]
    -- Move window to workspace N 
         , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]] ++
    -- Switch to screen N, M-{w,e,r}
    [((m .|. myModMask, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [1, 0, 2]
    -- Move window to screen N
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
    

toggleStrutsKey :: XConfig t -> (KeyMask, KeySym)
toggleStrutsKey XConfig{modMask = modm} = (modm, xK_b)