# Player-Teleporter-LuaU-Roblox-Studio
I made a teleporter script that is useful for different Roblox game idea. Step-by-step explanation of how to set it up correctly.

1.) You have to create 2 parts the size/colour doesn't matter
2.) Rename the parts to Teleport1 and Teleport2 (if you rename them not correctly the script won't work)
3.) Insert under Teleport1 and Teleport2 a normal script as a child.
4.) Name the scripts "TeleportPlayerOnTouch" for Teleport1 and for Teleport2 name it "TeleportPlayerOnTouch2"
**I will upload a Screenshot of how it should looks like if i can**
5.) Create a module script anywhere in the Workspace and name it TeleportCooldowns
6.) I uploaded 3 Files with the names for every script, copy paste them correctly.

Modify:
At the top of the 2 normals script i made variables for every script.
like this for TeleportPlayerOnTouch

local teleport1 = script.Parent
local teleport2 = game.Workspace:FindFirstChild("Teleport2")
local TeleportCooldowns = require(game.Workspace:FindFirstChild("TeleportCooldowns"))

and for TeleportPlayerOnTouch2

local teleport2 = script.Parent
local teleport1 = game.Workspace:FindFirstChild("Teleport1")
local TeleportCooldowns = require(game.Workspace:FindFirstChild("TeleportCooldowns"))

If you want to name the parts different than i did, you have to change the 2 second line.
It will look like this if you gave the part "Teleport1" the name "DifferentName"
local teleport1 = game.Workspace:FindFirstChild("Teleport1") -> local teleport1 = game.Workspace:FindFirstChild("DifferentName")

In the 2 part scripts you can change the cooldown time for teleporting again. You have to change the last line of the script (before the 3x end).
