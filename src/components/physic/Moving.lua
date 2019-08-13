local Vector = require("helper/Vector")

local Moving = class("Moving")

function Moving:initialize(speed, maxSpeed)
    self.speed = speed or Vector()
    self.maxSpeed = maxSpeed
end

return Moving
