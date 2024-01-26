local Macro_OFF = 7    -- mouse button for turning macro on/off
local Macro_ON = 8
local Macro_Activator

function OnEvent(event, arg) 
   if event == "PROFILE_ACTIVATED" then
      EnablePrimaryMouseButtonEvents(true)
   elseif event == "MOUSE_BUTTON_PRESSED" and arg == Macro_OFF then
      Macro_Activator = 0 
   elseif event == "MOUSE_BUTTON_PRESSED" and arg == Macro_ON then
      Macro_Activator = 1 
   elseif event == "MOUSE_BUTTON_PRESSED" and Macro_Activator == 1 then
      if event == "MOUSE_BUTTON_PRESSED" and arg == 1 then
        PressMouseButton(1)
        Sleep(4)
        ReleaseMouseButton(1)
        Sleep(4)
        PressKey("Q")
        Sleep(4)
        ReleaseKey("Q")
        Sleep(100)
        PressKey("1")
        Sleep(4)
        ReleaseKey("1")
      elseif event == "MOUSE_BUTTON_PRESSED" and arg == 5 then
        PressMouseButton(1)
        Sleep(100)
        ReleaseMouseButton(1)
      end
   end 
end