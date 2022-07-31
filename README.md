# Quanling Dingle Script


## How to use the library (Functions)

##### Runover: When `{c}` is in the example, this means that the string can be changed. (If you copy these scripts, delete `{c}`)

### Library

------
```lua
local DiscordLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatError404/Quanling-Dingle-Script/main/ui-lib.lua', true))()
```
Neccesary to load the library

### Windows

------
```lua
local Window {c} = DiscordLib:Window("Quanling Dingle {1}", "Quanling Dingle Engine {2}")
```

1. This is the title of the window, shown [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-1.png?raw=true)

2. This is the text in the settings. This does not affect the 2 lines of text above it. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-2.png?raw=true)

# Servers
```lua
local Server = Window:Server("{name}, "")
```

This creates a server with the stated name. (There are no custom Icons)

### SaveInfo

------
```lua
SaveInfo() {1}
```
Cannot change the function name or its contents
1. Saves "Discord" (User UI) settings. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Scripts/SaveInfo.lua) and [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-3.png?raw=true)


### Buttons

------

```lua
local ChannelContent{1}:Button(
     "I'm a button!",
     function() {2} {c}
          DiscordLib:Notification("Notification {3}", "Killed everyone! {4}", "Okay! {5}")
     end
)
```

1. This is the name of the channel. This can be changed.

### Drop-Down Menus

```lua
local drop{c} =
    drops{c} {1}:Dropdown(
    "Pick me!{2}",
    {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"},
    function(bool)
        print(bool)
    end
)
```

1. This is the name of the channel that the Drop-Down menu will be in. All channels must be made with the following.
```lua
local {name} = {Server Name}:Channel("{Channel Name}")
```
In this case, the name for the server can be changed to anything. This is just the local variable, so the variable name is not going to be the server name. The Server name, in this case, is not stated, as at `Servers`, it just has `{name}`, so you can change this to anything. Just make sure that when using the `{Server Name}`, it is the name of the local variable, not the server name shown in the UI.
