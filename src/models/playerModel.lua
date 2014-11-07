-- Graphic components
local DrawableComponent = require("components/graphic/drawableComponent")
local ZIndex = require("components/graphic/zIndex")

-- Physic components
local PositionComponent = require("components/physic/positionComponent")

local PlayerModel = class("PlayerModel", Entity)
function PlayerModel:__init()
    self:add(PositionComponent(10, 10))
    self:add(DrawableComponent(resources.images.circle))
    self:add(ZIndex(1))
end

return PlayerModel
