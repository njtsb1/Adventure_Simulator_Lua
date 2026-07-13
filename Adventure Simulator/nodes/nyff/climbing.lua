-- Constants
local ID = "nyff.climbing"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "It looked easier in the movies"
node.gameOver = true
node.description = [[After climbing just 10 meters, you slipped and fell. A tragic end to a short adventure.]]

return node