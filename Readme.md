
# DSO-Library

DSO-Library is a free and open sourced Roblox UI library.


## Loadstring
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/dropouut/DSO-Library/main/librarymain.lua")()
```

## Features
- Buttons
- Sliders
- Dropdowns
- Toggles

... more to be added.

Created by $in Interactions#5103

## Documentation

### Get the library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dropouut/DSO-Library/main/librarymain.lua")()
```

### Create the GUI
```lua
local main = Library:Init {
    name = "DSO V1"
}

```
### Create a Tab
```lua
local Tab = main:Tab({
    name = "name",
    Icon = "rbxassetid://"
})
```

### Create a Button
```lua
local Button = tab:Button({
    name = "Button",
    callback = function()
        print("Button was clicked by ".. game.Players.LocalPlayer.Name)
    end,
})
```

### Create a Toggle
```lua
local Toggle = tab:Toggle({
    callback = function(v)
        print(v)
    end,
    title = "Print"
})
```

### Create a Dropdown

```lua
local Dropdown = tab:Dropdown({
	title = "Test",
	callback = function(v)
		print(v.. " was clicked")
	end,
})

Dropdown:Add("Name", 1)
Dropdown:Add("Name2", 2)
```

### Create a Slider

```lua
local Slider = tab:Slider({
	Title = "Walkspeed",
	callback = function(v)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end,
})
```

### Checking Versions
-- Instructions:
  - Create a new repo
  - make a config.json file
  - and put in:
           ```json
            {
                "creator": "YourName",
                "client": "sin",
                "version": YOUR VERSION HERE
             }
             ```
```lua
    Library:checkVersion(1, "dropouut", "database", "main") -- 1 is your version. ALWAYS UPDATE THIS IF YOU ENABLE, 2nd is your github name, 3rd is your repo name, 4th is your branch name
     
```
