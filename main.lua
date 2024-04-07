local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create{
    Name = "Lemon ESP",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Serika,
    Link = "https://github.com/deeeity/mercury-lib"
}

local Tab = GUI:Tab{
	Name = "ESP",
	Icon = "rbxassetid://8569322835"
}
Tab:Toggle{
    Name = "Boxes",
    StartingState = false,
    Description = nil,
    Callback = function(state) 
Sense.teamSettings.enemy.box3d = state
end
}
Tab:ColorPicker{
    Style = Mercury.ColorPickerStyles.Legacy,
    Callback = function(color)
       Sense.teamSettings.enemy.box3dColor[1] = color
       end
}
Tab:Toggle{
	Name = "HealthBar",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
                Sense.teamSettings.enemy.healthBar  = state
        end
}

Tab:Toggle{
	Name = "Show HealthText",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
  Sense.teamSettings.enemy.healthText  = state
        end
} 
Tab:Toggle{
	Name = "Show Distance",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
                Sense.teamSettings.enemy.distance = true
        end
}
Tab:ColorPicker{
	Style = Mercury.ColorPickerStyles.Legacy,
	Callback = function(color) 
Sense.teamSettings.enemy.distanceColor = color
         end
}
Tab:Toggle{
	Name = "Show Name",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
                Sense.teamSettings.enemy.name = state
        end
}

Tab:Toggle{
	Name = "Tracers",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
                Sense.teamSettings.enemy.tracer = state
        end
}  
Tab:ColorPicker{
	Style = Mercury.ColorPickerStyles.Legacy,
	Callback = function(color) 
Sense.teamSettings.enemy.tracerColor = color
        end
}
Tab:Button{
	Name = "Load ESP",
	Description = nil,
	Callback = function() 
Sense.teamSettings.enemy.enabled = true
Sense.Load()
        end
}
Tab:Button{
	Name = "Unload ESP",
	Description = nil,
	Callback = function() 
Sense.teamSettings.enemy.enabled = true
Sense.Unload()
        end
}
