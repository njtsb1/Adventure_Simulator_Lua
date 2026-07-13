-- Constants
local ID = "nyff.top"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.description =
[[Phew, the wolves are gone. After much effort, you reach the summit and see an incredible view—what an adventure!

At the top of the mountain, you find a chest containing a gold key; someone must have left it behind.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Take the key and head to Kalandra Beach! Anything to get out of this cold...",
    nil,
    function()
        game.hasKey = true
    end
))

return node