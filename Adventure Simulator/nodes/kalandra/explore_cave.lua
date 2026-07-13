-- Constants
local ID = "kalandra.explore_cave"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Kalandra's Dungeon"
node.description = "You discover a secret dungeon that appears not to have been visited for hundreds of years. You stand before a long, narrow corridor, and every instinct tells you there are hidden traps here. There is a golden door at the far end of the corridor, but there are also several side passages."

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.trap",
    "Proceed down the corridor; the traps likely no longer work after so much time."
))
table.insert(node.choices, Choice:new(
    "kalandra.narrow_hole",
    "Head left through a narrow hole in the wall that seems to lead somewhere."
))
table.insert(node.choices, Choice:new(
    "kalandra.trap",
    "Pull a lever beside you. It is obviously a trap."
))

return node