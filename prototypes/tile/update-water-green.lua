--[[
   Copyright 2018 H8UL

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
--]]

local function convertToMazeTile(mazeTile)
    if mazeTile == "lava-hot" then
        mazeTile.tint = { r = 0, g = 0, b = 0.9 }
    end

    mazeTile.map_color={r=0.1, g=0.1, b=0.1}

    mazeTile.collision_mask = {
        layers = {
            item = true,
            water_tile= true,
            player=true,
            is_lower_object=true,
            object=true,
            is_object=true,
            floor=true,
            meltable=true,
            doodad=true,
            resource=true,
            ground_tile=true
        }
    }

    mazeTile.effect_color = {0.02, 0.02, 0.02}

    mazeTile.variants =
    {
        empty_transitions = true,
        main =
        {
            {
                picture = "__RibbonMaze21__/graphics/terrain/maze-floor1.png",
                count = 16,
                size = 1
            },
            {
                picture = "__RibbonMaze21__/graphics/terrain/maze-floor2.png",
                count = 4,
                size = 2
            },
            {
                picture = "__RibbonMaze21__/graphics/terrain/maze-floor4.png",
                count = 4,
                size = 4,
            },
        },
        inner_corner =
        {
            picture = "__RibbonMaze21__/graphics/terrain/maze-inner-corner.png",
            count = 6,
        },
        outer_corner =
        {
            picture = "__RibbonMaze21__/graphics/terrain/maze-outer-corner.png",
            count = 6,
        },
        side =
        {
            picture = "__RibbonMaze21__/graphics/terrain/maze-side.png",
            count = 8,
        }
    }
end

-- Reuse water-green as a maze tile, this allows us to automatically use the base mod's tile transitions
convertToMazeTile(data.raw.tile["water-green"])
convertToMazeTile(data.raw.tile["lava-hot"])
convertToMazeTile(data.raw.tile["gleba-deep-lake"])
convertToMazeTile(data.raw.tile["oil-ocean-deep-2"])
convertToMazeTile(data.raw.tile["ammoniacal-ocean-2"])
