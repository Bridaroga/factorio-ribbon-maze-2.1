-- Migrating save to version 2.1.75
if storage["ribbonMazeConfig"]["nauvis"] == nil then
    local config = storage["ribbonMazeConfig"]

    local config2 = {}
    storage["ribbonMazeConfig"] = config2
    storage["ribbonMazeConfig"]["nauvis"] = config
end