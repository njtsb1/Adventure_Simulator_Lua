-- Constants
local ID = "nyff.igloo"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Nyff Mountains"
node.description = [[It was hard work, but you managed to build an igloo with your own hands and a spare shovel found nearby.

After waiting out the night, you wake up to strong winds and bone-chilling cold. It's a blizzard!

Staying in the igloo is no longer an option. What now?]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.frozen",
    "Hiding is the best option; stay in the igloo until the blizzard passes."
))
table.insert(node.choices, Choice:new(
    "nyff.forest",
    "Abandon the igloo and head into the frozen forest."
))

return node