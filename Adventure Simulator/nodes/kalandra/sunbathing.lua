-- Constants
local ID = "kalandra.sunbathing"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "End of the adventure"
node.gameWon = true
node.description = "You stayed at the beach for a few more hours and got plenty of rest. When you woke up, you decided to head home."

return node