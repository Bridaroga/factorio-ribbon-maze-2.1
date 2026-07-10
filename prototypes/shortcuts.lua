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

local terraformingTurretTargetingRemote = table.deepcopy(data.raw["shortcut"]["give-artillery-targeting-remote"])

terraformingTurretTargetingRemote.name = "maze-terraforming-turret-targeting-remote"
terraformingTurretTargetingRemote.icons = {
    {
        icon = "__base__/graphics/icons/shortcut-toolbar/mip/artillery-targeting-remote-x56.png",
        icon_size = 56,
        tint = { r = 0, g = 0, b = 1, a = 1 },
    },
}
terraformingTurretTargetingRemote.small_icons = {
    {
        icon = "__base__/graphics/icons/shortcut-toolbar/mip/artillery-targeting-remote-x24.png",
        icon_size = 24,
        tint = { r = 0, g = 0, b = 1, a = 1 },
    },
}
terraformingTurretTargetingRemote.technology_to_unlock = "maze-terraforming"
terraformingTurretTargetingRemote.associated_control_input  = ""
terraformingTurretTargetingRemote.item_to_spawn = "maze-terraforming-artillery-targeting-remote"

data:extend{ terraformingTurretTargetingRemote }