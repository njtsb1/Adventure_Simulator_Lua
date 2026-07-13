-- Constants
local ID = "kalandra.investigate"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Kalandra Beach"
node.description = "You explore the area and find a trail leading to an inhospitable cave that appears empty and abandoned. The cave walls bear inscriptions about the Legend of the Kraken, along with drawings suggesting the existence of a magic capable of defeating it."

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.sunbathing",
    "Kraken? Magic? What is this, an adventure movie? Forget this nonsense and go back to the beach to sunbathe."
))
table.insert(node.choices, Choice:new(
    "kalandra.explore_cave",
    "Amazing! Explore the cave further to decipher its secrets."
))
table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "All this fear over an octopus? Go back to the beach and take a dip in the sea to prove none of this is real."
))

return node