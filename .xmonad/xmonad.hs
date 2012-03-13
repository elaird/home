import XMonad
import XMonad.Util.EZConfig

-- determine classNames with xprop | grep WM_CLASS
mymanageHook :: ManageHook
mymanageHook = composeAll
                [ className =? "Kruler" --> doFloat
                , className =? "net-sourceforge-jnlp-runtime-Boot" --> doFloat
                , stringProperty "WM_NAME" =? "Vievo" --> doFloat
                ]

main = xmonad $ defaultConfig
       { terminal = "konsole"
       , manageHook = mymanageHook
       , borderWidth = 0
       }
       `additionalKeys`  [ ((mod1Mask, xK_p), spawn "dmenu_run")
       			 , ((mod1Mask, xK_z), spawn "if type xmonad; then xmonad --recompile && xmonad --restart; else xmessage xmonad not in \\$PATH: \"$PATH\"; fi") -- %! Restart xmonad
			 ]
       `additionalKeysP` [ ("M-C-l", spawn "slock") ]
       `removeKeys`      [ (mod1Mask, xK_q) ]
