import XMonad
import XMonad.Layout.Spiral
import XMonad.Util.EZConfig
--import XMonad.Actions.Volume

--mylayoutHook = spiral (6/7) ||| Mirror tiled ||| Full
--               where tiled = Tall 1 0.03 0.5 

-- determine classNames with xprop | grep WM_CLASS
mymanageHook :: ManageHook
mymanageHook = composeAll
                [ className =? "Kruler" --> doFloat
                , className =? "net-sourceforge-jnlp-runtime-Boot" --> doFloat
                , stringProperty "WM_NAME" =? "Vievo" --> doFloat
                ]

main = xmonad $ defaultConfig
       { terminal = "konsole"
--       , layoutHook = mylayoutHook
       , manageHook = mymanageHook
       , borderWidth = 0
       , startupHook = do spawn ". ~/.xmodmap" 
                       >> spawn "xloadimage -onroot -center ~/.background"
       }
       `additionalKeys`  [ ((mod1Mask, xK_p), spawn "dmenu_run")
--                         , ((modMask x, xK_F8 ), lowerVolume 3 >> return ()),
--                         , ((modMask x, xK_F9 ), raiseVolume 3 >> return ()),
--                         , ((modMask x, xK_F10), toggleMute    >> return ()),
       			 , ((mod1Mask, xK_z), spawn "if type xmonad; then xmonad --recompile && xmonad --restart; else xmessage xmonad not in \\$PATH: \"$PATH\"; fi") -- %! Restart xmonad
			 ]
       `additionalKeysP` [ ("M-C-l", spawn "slock") ]
       `removeKeys`      [ (mod1Mask, xK_q) ]
