-- Constants
local ID = "nyff.forest"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Nyffville"
node.description = [[After much walking, you found a small, modest village in the middle of the forest. The villagers welcome you with joy! Tonight's feast is guaranteed.

After a good night's sleep, it is time to continue the adventure. One of the villagers suggests you follow the trail that goes around the mountain, as it is the longest—and safest—route.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.trail",
    "Follow the trail that goes around the mountain."
))
table.insert(node.choices, Choice:new(
    "nyff.climbing",
    "We want to reach the summit today; let's climb the mountain!"
))

return node