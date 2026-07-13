-- Constants
local ID = "kalandra.kraken_game_over"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "End of the adventure"
node.gameOver = true
node.description = "A massive monster emerges from the depths and drags you down. You didn't stand a chance."

return node