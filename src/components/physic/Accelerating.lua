local Vector = require("helper/Vector")

local Accelerating = Component.create("Accelerating")

function Accelerating:initialize(defaultAcceleration, acceleration)
    self.defaultAcceleration = defaultAcceleration
    self.acceleration = acceleration or Vector()
end

return Accelerating
