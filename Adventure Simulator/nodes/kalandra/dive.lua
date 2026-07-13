-- Constants
local ID = "kalandra.dive"

-- Dependencies
local Node = require("Node")
local Choice = require("Choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.description = "While diving, you come across a sunken pirate ship just a few meters down. Air bubbles are rising from inside it."

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "Surface for air and dive back down to take a closer look."
))
table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "Ignore the ship and continue enjoying the day at sea."
))
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Creepy! Leave the water and head back to the beach.",
    nil,
    function()
        game.FearOfTheSea = true
    end
))

return node