import XMonad
import XMonad.Layout.Spiral
import XMonad.Util.EZConfig

--mylayoutHook = spiral (6/7) ||| Mirror tiled ||| Full
--               where tiled = Tall 1 0.03 0.5 

mymanageHook :: ManageHook
mymanageHook = composeAll
                [ className =? "Kruler" --> doFloat ]


main = xmonad $ defaultConfig
       { terminal = "konsole"
--       , layoutHook = mylayoutHook
       , manageHook = mymanageHook
       , borderWidth = 0
       , startupHook = do spawn ". ~/.xmodmap" 
--                       >> spawn "hsetroot -full ~/.background"
--                       >> spawn "xcompmgr &"
       }
       `additionalKeys`  [ ((mod1Mask, xK_p), spawn "dmenu_run")
       			 , ((mod1Mask, xK_z), spawn "if type xmonad; then xmonad --recompile && xmonad --restart; else xmessage xmonad not in \\$PATH: \"$PATH\"; fi") -- %! Restart xmonad
			 ]
       `additionalKeysP` [ ("M-C-l", spawn "slock") ]
       `removeKeys`      [ (mod1Mask, xK_q) ]
