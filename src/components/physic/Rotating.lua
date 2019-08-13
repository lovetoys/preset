local Vector = require("helper/Vector")

local Rotating = class("Rotating")

function Rotating:initialize(defaultRotationSpeed)
    self.defRotationSpeed = defaultRotationSpeed
    self.rotationSpeed = 0
end

return Rotating
