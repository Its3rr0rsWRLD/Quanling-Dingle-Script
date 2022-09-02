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

### Servers

------
```lua
local Server = Window:Server("{name}", "")
```

This creates a server with the stated name. (There are no custom Icons)

### SaveInfo

------
```lua
SaveInfo() {1}
```
Cannot change the function name or its contents
1. Saves "Discord" (User UI) settings. This is automatic and should not be used unless customizing the ui library. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Scripts/SaveInfo.lua) and [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-3.png?raw=true)


### Buttons

------

```lua
local ChannelContent{1}:Button(
     "I'm a button!{c} {2}",
     function() {3}
        print("hi")
     end
)
```

1. This is the name of the channel. This can be changed. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-4.png?raw=true)

2. This is the text of the button. It is shown on top of the button.

3. This is the function. It is not necessary but if there is no action, the button will not do anything.

### Drop-Down Menus

------

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

1. This is the name of the channel that the Drop-Down menu will be in. All channels must be made with the following. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-5.png?raw=true) for example images.
```lua
local {name} = {Server Name}:Channel("{Channel Name}")
```
In this case, the name for the server can be changed to anything. This is just the local variable, so the variable name is not going to be the server name. The Server name, in this case, is not stated, as at [Servers](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/README.md#servers), it just has `{name}`, so you can change this to anything. Just make sure that when using the `{Server Name}`, it is the name of the local variable, not the server name shown in the UI.

2. This is the text shown when the Drop-Down is closed.

### ColorPickers

------

```lua
clrs{c} {1}:Colorpicker(
    "ESP Color{c} {2}",
    Color3.fromRGB(255, 1, 1),
    function(t)
        print(t)
    end
)
```

1. This is the local variable name for the channel. It can be changed, but must still be the local variables name. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-6.png?raw=true)

2. This is the text shown in the UI.

### Labels

------

```lua
lbls{c} {1}:Label("This is just a label.{c} {2}")
```

1. This is the local variable name for the Channel. It can be changed, but must still be the local variables name.

For both, See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-7.png?raw=true)

2. This is the text shown in the label.

### TextBoxes

------

```lua
textbs{c} {1}:Textbox(
    "Gun power{c}",
    "Type here!{c}",
    true,
    function(t)
        print(t)
    end
)
```

1. This is the local variable name for the Channel. It can be changed, but must still be the local variables name. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-8.png?raw=true)

### Toggles

------

```lua
tgls{c} {1}:Toggle(
    "Auto-Farm{c}",
    false,
    function(bool)
        print(bool)
    end
)
```
1. This is the local variable name for the Channel. It can be changed, but must still be the local variables name. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-9.png?raw=true)

### (Key) Binds

------

```lua
bnds{c} {1}:Bind(
    "Kill bind{c}",
    Enum.KeyCode.RightShift{c} {2},
    function()
        print("Killed everyone!")
    end
)
```
1. This is the local variable name for the Channel. It can be changed, but must still be the local variables name.

Both: See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-10.png?raw=true)

2. This is the key that will trigger the function. `Enum.KeyCode` is neccecary for the key bind.

### Seperators

------

```lua
btns{c} {1}:Seperator()
```

1. This is the local variable name for the Channel. It can be changed, but must still be the local variables name. See [here](https://github.com/ThatError404/Quanling-Dingle-Script/blob/main/Example%20Images/QDS-MD-11.png?raw=true)

### Notifications

------

```lua
DiscordLib:Notification("Notification {1}", "Killed everyone! {2}", "Okay! {3}")
```

1. This is the text shown at the top of the notificantion. It's more or less a title.

2. This is the text shown in the middle of the notification. This would be all of the information that the user sees the most.

3. This is the text of a button. The button is at the bottom of the notification.

### Channels

------

```lua
local Credits = CredServ {1}:Channel("Credits {2}")
```
1. This is the variable name for the server.

2. This is the name of the channel.
