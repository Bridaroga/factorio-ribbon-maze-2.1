-- Check dead end.
function isDeadEnd(maze, x, y)
    local walls = 0
    -- NORTH
    if Maze.wallTileAt(maze, x, y+1) then
        walls = walls + 1
    end
    -- SOUTH
    if Maze.wallTileAt(maze, x, y-1) then
        walls = walls + 1
    end
    -- EAST
    if Maze.wallTileAt(maze, x+1, y) then
        walls = walls + 1
    end
    -- WEST
    if Maze.wallTileAt(maze, x-1, y) then
        walls = walls + 1
    end

    if walls == 3 then
        return true
    else
        return nil
    end
end

-- Make Fulgoran ruin vault and attractor on resources.
function fulgoraSetRuinVault(surface, x, y)
    if surface.name ~= "fulgora" then
        return
    end

    surface.create_entity{name="fulgoran-ruin-vault", position={x + 16, y + 16}}
    surface.create_entity{name="fulgoran-ruin-attractor", position={x + 2, y + 2}}
    surface.create_entity{name="fulgoran-ruin-attractor", position={x + 2, y + 29}}
    surface.create_entity{name="fulgoran-ruin-attractor", position={x + 29, y + 2}}
    surface.create_entity{name="fulgoran-ruin-attractor", position={x + 29, y + 29}}
end
