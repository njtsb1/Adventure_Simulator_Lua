-- Constants
local ID = "kalandra.dark_hole"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Kalandra's Dungeon"
node.description = [[You have reached the golden door! It is imposing and gleaming, and somehow radiates incredible power.
You notice a golden lock that seems to call for a matching key.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.success",
    "Use the golden key",
    function()
        return game.hasKey == true
    end
))
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Return to Kalandra's beach."
))
table.insert(node.choices, Choice:new(
    "kalandra.trap",
    "Try to force the door open."
))

return node