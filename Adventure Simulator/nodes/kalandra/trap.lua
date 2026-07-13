-- Constants
local ID = "kalandra.trap"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Oops"
node.gameOver = true
node.description = "You accidentally triggered a dungeon trap and didn't survive."

return node