-- Constants
local ID = "nyff.frozen"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Frozen"
node.gameOver = true
node.description = [[%{cyan}The cold was too intense, and you couldn't withstand it.]]

return node