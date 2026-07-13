-- Constants
local ID = "kalandra.start"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Kalandra Beach"
node.description = "Waves dance and the breeze drifts by as the sun embraces you with a pleasant warmth; this place is as beautiful as the legends say. Yet, to your surprise, there is no one else here. Your intuition tells you something is wrong."
node.header = [[
%{green}_\/_     %{yellow}            |            %{green}    _\/_
%{green}/o\\     %{yellow}        \       /        %{green}    //o\
%{green} |       %{yellow}          .---.          %{green}      |
%{green}_|_______%{yellow}     --  /     \  --     %{green}______|__
%{cyan }         %{      }`~^~^~^~^~^~^~^~^~^~^~^~`%{     }
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.sunbathing",
    "Take advantage of the deserted beach to rest and sunbathe."
))
table.insert(node.choices, Choice:new(
    "kalandra.investigate",
    "Follow your intuition and investigate the disappearance of the people."
))
table.insert(node.choices, Choice:new(
    "kalandra.dive",
    "Go for a dip in the sea.",
    function()
        return game.FearOfTheSea ~= true
    end
))

return node