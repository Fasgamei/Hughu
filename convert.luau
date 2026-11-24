local roblox = require("@lune/roblox")
local fs = require("@lune/fs")

local modelFile = fs.readFile("dashboard design gui - xaron studios.rbxm")
local instances = roblox.deserializeModel(modelFile)

local game = roblox.Instance.new("DataModel")
local starterGui = game:GetService("StarterGui")

for _, item in instances do
    item.Parent = starterGui
end

local placeFile = roblox.serializePlace(game)
fs.writeFile("output.rbxl", placeFile)
