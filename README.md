# VizevLiray_Library_Gui.lua
Vizev Liray Library - Source Code, Library Gui and if you create the script by Vizev Liray Library you can create your own gui, for peoples who know lua!
Lua Script Test

local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/VizevRobloxScripts/VizevLiray_Library_Gui.lua/main/VizevLiray%20Library%20Gui.lua')))()

-- Adding the title.

local Title = Library:AddTitle({
  Text = 'Title';
  Transparency = 0; -- You can change: Transparency, into 1!
})

-- Adding the button.

local ButtonName = Library:AddButton({
  Text = 'Button Text';
  Name = "Button Name";
  Click = function()
-- Your lua script here
end
})

return script
