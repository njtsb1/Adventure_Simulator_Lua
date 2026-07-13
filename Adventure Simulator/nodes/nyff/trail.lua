-- Constants
local ID = "nyff.trail"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.description = [[A pack of wolves has surrounded you; they're out of food too, and—wouldn't you know it—you're the feast!]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.wolve",
    "Run as fast as you can, without a moment's hesitation!"
))
table.insert(node.choices, Choice:new(
    "nyff.top",
    "Share your food with the wolves so they leave you alone."
))

return node