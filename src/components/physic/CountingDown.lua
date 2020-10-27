local CountingDown = Component.create("CountingDown")

function CountingDown:initialize(event, time)
    self.time = time
    self.event = event
end

return CountingDown
