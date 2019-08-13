-- Systems
local DrawSystem = require("systems/draw/DrawSystem")

-- Events
local KeyPressed = require("events/KeyPressed")

-- State superclass
local State = require("core/State")
local GameState = class("GameState", State)
function GameState:load()
    self.engine = Engine()
    self.eventmanager = EventManager()

    self.engine:addSystem(DrawSystem())
end

function GameState:update(dt)
    self.engine:update(dt)
end

function GameState:draw()
    self.engine:draw()
end

function GameState:keypressed(key, isrepeat)
    self.eventmanager:fireEvent(KeyPressed(key, isrepeat))
end

return GameState
