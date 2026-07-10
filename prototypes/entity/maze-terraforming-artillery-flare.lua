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

local terraformingArtilleryFlare = table.deepcopy(data.raw["artillery-flare"]["artillery-flare"])

terraformingArtilleryFlare.name = "maze-terraforming-artillery-flare"
terraformingArtilleryFlare.icons = {
    {
        icon = "__base__/graphics/icons/artillery-targeting-remote.png",
        tint = { r = 0, g = 0, b = 1, a = 1 },
    },
}
terraformingArtilleryFlare.map_color = { 0, 0, 1 }
terraformingArtilleryFlare.pictures = {
    {
        filename = "__core__/graphics/shoot-cursor-red.png",
        priority = "low",
        width = 258,
        height = 183,
        scale = 1,
        flags = {"icon"},
        tint = { r = 0, g = 1, b = 1, a = 1 },
    }
}
terraformingArtilleryFlare.shot_category = "maze-terraforming-artillery-shell-category"

data:extend{ terraformingArtilleryFlare }