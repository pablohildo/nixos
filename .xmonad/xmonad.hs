import XMonad
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Hooks.DynamicLog
import System.IO

main = do 
  xmproc <- spawnPipe "xmobar"
  xmonad $ docks $ defaultConfig
        { terminal = "kitty"
        , borderWidth = 1
        , normalBorderColor = "#cccccc"
        , focusedBorderColor = "#cd8b00"
        , manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                      { ppOutput = hPutStrLn xmproc
                      , ppTitle = xmobarColor "green" "" . shorten 50}
        } 
        `additionalKeys`
        [ ((mod1Mask, xK_p), spawn "rofi -show run") ] -- launch rofi app runner
