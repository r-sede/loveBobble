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
    return {
        tableX = x or 0,
        tableY = y or 0,
        drawX = drawX,
        drawY = drawY,
        color = lcolor,
        state = 'idle',
        keyframe = 0,

        draw = function(self)
            love.graphics.draw(
                ASSETS.atlas,
                ASSETS.bubbles[self.color][self.state][self.keyframe],
                self.drawX, self.drawY, 0,
                SCALE, SCALE
            )
        end,
        update = function(self, dt)
            if y%2 == 0 then
                self.drawX = (self.tableX - 1) * BLOCKSIZE * SCALE + (0.5 * BLOCKSIZE * SCALE)
            else
                self.drawX = (self.tableX - 1) * BLOCKSIZE * SCALE
            end
            self.drawY = (self.tableY - 1) * BLOCKSIZE * SCALE - ((self.tableY-1) * BLOCKSIZE * SCALE * 0.125)
        end,
    }
end