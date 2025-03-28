local states = {}

states.idle = function (self, dt)
    --this is temp
    self.keyframe = 1
    if self.tableY%2 == 0 then
        self.drawX = (self.tableX - 1) * BLOCKSIZE * SCALE + (0.5 * BLOCKSIZE * SCALE)
    else
        self.drawX = (self.tableX - 1) * BLOCKSIZE * SCALE
    end
    self.drawY = (self.tableY - 1) * BLOCKSIZE * SCALE - ((self.tableY-1) * BLOCKSIZE * SCALE * 0.125)
end

states.falling = function (self, dt)

end

states.exploding = function (self, dt)

    self.shouldBeRemoved = true
end

states.monster = function (self, dt)

end

states.inserted = function (self, dt)
    self.animTimer = self.animTimer - dt
    if self.animTimer <= 0 then
        self.animTimer = 1 / self.fps
        self.keyframe = self.keyframe + 1
        if self.keyframe > self.nbrFrame then
            self:setState('idle')
        end
    end
end

function Bubble(color, x, y)
    local lcolor = nil
    if type(color)  == 'table' then
        lcolor = color[math.random(#color)]
    else
        lcolor = color
    end

    local drawX, drawY = 0

    if y%2 == 0 then
        drawX = (x - 1) * BLOCKSIZE * SCALE + (0.5 * BLOCKSIZE * SCALE)
    else
        drawX = (x - 1) * BLOCKSIZE * SCALE
    end
    drawY = (y - 1) * BLOCKSIZE * SCALE - ((y-1) * BLOCKSIZE * SCALE * 0.125)  

    local nbrFrame = #ASSETS.bubbles[lcolor]['idle']
    -- print('construct')
    return {
        tableX = x or 0,
        tableY = y or 0,
        drawX = drawX,
        drawY = drawY,
        color = lcolor,
        state = 'idle',
        keyframe = 0,
        angle = 0,
        fps = 10,
        animTimer = 1/10,
        nbrFrame = nbrFrame,
        velX =  math.cos(0),
        velY =  math.sin(0),
        shouldBeRemoved = false,

        draw = function(self)
            love.graphics.draw(
                ASSETS.atlas,
                ASSETS.bubbles[self.color][self.state][self.keyframe],
                self.drawX, self.drawY, 0,
                SCALE, SCALE
            )
            love.graphics.print(self.state, self.drawX, self.drawY)
        end,

        update = function(self, dt)
            states[self.state](self, dt)
        end,

        setState = function(self, state)
            -- print(state)
            self.state = state
            self.keyframe = 0
            self.nbrFrame = #ASSETS.bubbles[self.color][self.state]
        end,
    }
end