-- Constants
local ID = "nyff.wolve"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Canine Feast"
node.gameOver = true
node.description = [[The wolves caught up to you and managed to find food—you! It was a lucky day... for the wolves, of course.]]

return node