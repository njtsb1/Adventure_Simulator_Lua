local nodeLoader = {}

local nodeDictionary = {} ---@type table<string,Node>
local initialNode = nil ---@type Node
local hasErrors = false

---@param path string
---@return Node
local function loadNode(path)
    local success, nodeOrErr = pcall(function()
        return require(path)
    end)
    if not success then
        warn("Failed to load node " .. path .. ". The file was not found.")
        hasErrors = true
        return nil
    end
    local node = nodeOrErr ---@type Node
    if nodeDictionary[node.id] ~= nil then
        warn("Failed to load node " .. path .. ". The ID " .. node.id .. " is already registered.")
        hasErrors = true
        return nil
    end
    nodeDictionary[node.id] = node
    return node
end

---@param parentNode  Node
local function loadNodesFromChoices(parentNode)
    for _, choice in pairs(parentNode.choices) do
        local destinationId = choice.destination
        if not nodeDictionary[destinationId] then
            local childNode = loadNode("nodes." .. destinationId)
            if childNode then
                loadNodesFromChoices(childNode)
            end
        end
    end
end

---Loads all nodes internally.
function nodeLoader.loadNodes()
    nodeDictionary = {}

    -- Load initial node
    initialNode = require("nodes.start")
    nodeDictionary[initialNode.id] = initialNode

    -- Recursively load other nodes
    loadNodesFromChoices(initialNode)

    -- Validate destinations
    for id, node in pairs(nodeDictionary) do
        for _, choice in pairs(node.choices) do
            local destinationId = choice.destination
            local destinationNode = nodeDictionary[destinationId]
            if destinationNode == nil then
                warn(string.format("One of the choices of node %s points to a non-existent node: %s", node.id,
                    destinationId))
                hasErrors = true
            end
        end
    end
end

---Returns all nodes created by this script.
---@return table<string,Node>
function nodeLoader.getNodes()
    return nodeDictionary
end

---Returns the Node associated with the ID.
---@param nodeId string
---@return Node
function nodeLoader.getNode(nodeId)
    return nodeDictionary[nodeId]
end

---Returns the initial node of the simulator.
---@return Node
function nodeLoader.getInitialNode()
    return initialNode
end

---Returns whether this module encountered errors during execution.
---@return boolean
function nodeLoader.hasErrors()
    return hasErrors
end

return nodeLoader