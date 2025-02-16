print("==================================================================================================================")

function getParents(root)
    local path = root.Name
    if (root.Parent ~= nil) then
        return getParents(root.Parent) .. " > " .. path
    else
        return root.Name
    end
end

function prune(root)
    local path = getParents(root)

    print(root.Name)
    print(root.className)
    print(path)
    print("---")

    for i,v in pairs(root:GetChildren()) do
        prune(v)
    end
end

prune(game)

