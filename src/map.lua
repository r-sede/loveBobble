
local Map = {}

Map.map = {}

Map.ballBag = Stack()
Map.alreadyChecked = {}
Map.connectedBalls = {}

Map.fallingAndExplodingBubbles = {}

function Map:getMap()
    return self.map
end

function Map:resetMap()
    self.map = {
        {false, false, false, false, false, false, false, false},
          {false, false, false, false, false, false, false},
        {false, false, false, false, false, false, false, false},
          {false, false, false, false, false, false, false},
        {false, false, false, false, false, false, false, false},
          {false, false, false, false, false, false, false},
        {false, false, false, false, false, false, false, false},
          {false, false, false, false, false, false, false},
        {false, false, false, false, false, false, false, false},
          {false, false, false, false, false, false, false},
        {false, false, false, false, false, false, false, false},
          {false, false, false, false, false, false, false},
    }

end

function Map:fillRandomMap(lineToFill, avalaibleToken)
    for yy = 1, math.min(lineToFill, #self.map) do
        for xx = 1, #self.map[yy] do
            self.map[yy][xx] = Bubble(avalaibleToken, xx, yy)
        end
    end
end

function Map:draw()
    for yy = 1, #self.map do
        for xx = 1, #self.map[yy] do
            if self.map[yy][xx] then 
                self.map[yy][xx]:draw()
            end
        end
    end

    -- for i=1,#self.fallingAndExplodingBubbles do
    --     self.fallingAndExplodingBubbles[i]:draw()
    -- end

end
function Map:update()
    for yy = 1, #self.map do
        for xx = 1, #self.map[yy] do
            if self.map[yy][xx] then
                self.map[yy][xx]:update()
            end
        end
    end

    for i=1,#self.fallingAndExplodingBubbles do
        self.fallingAndExplodingBubbles[i]:update()
    end
end


function Map:insertIn(x, y, color)
    local bubble = Bubble(color, x, y)

    self.map[y][x] = bubble

    self:flood(x, y, bubble)

    if (self.ballBag.count > 2) then
        while self.ballBag.count > 0 do
            -- add score here
            local b = self.ballBag:pop()
            self.map[b.tableY][b.tableX] = false
            b:setState('exploding')
            table.insert(self.fallingAndExplodingBubbles, b)
        end
    end

    self:resetBag()

    -- check for disconected bubble 
    for xx = 1, #self.map[1] do
        self:searchConnected(xx, 1)
    end

    for yy = 1, #self.map do
        for xx = 1, #self.map[yy] do
            if not self.connectedBalls[xx..''..yy] and self.map[yy][xx]then
                -- add score here ??
                local b = self.map[yy][xx]
                b:setState('falling')
                table.insert(self.fallingAndExplodingBubbles, b)
                self.map[yy][xx] = false
            end
        end
    end
    self:resetBag()
end

function Map:searchConnected(x, y)
    -- check that we are not outside the 'board' and there is a bubble here
    if (y < 1 or y > #self.map) or (x < 1 or x > #self.map[y]) or not self.map[y][x] then return end
  
    if self.connectedBalls[x..''..y] == true then return end
    
    self.connectedBalls[x..''..y] = true 
    
    if y%2 == 0 then -- ligne de 7
        self:searchConnected(x+1, y+1) --sud ouest
        self:searchConnected(x, y+1) --sud est
        self:searchConnected(x, y-1) --nord ouest
        self:searchConnected(x+1, y-1) --nord ouest
    else -- ligne de 8
        self:searchConnected(x-1, y+1) --sud ouest
        self:searchConnected(x, y+1) --sud est
        self:searchConnected(x-1, y-1) --nord ouest
        self:searchConnected(x, y-1) --nord ouest
    end

    self:searchConnected(x-1, y)
    self:searchConnected(x+1, y)
    return
end

function Map:flood(x, y, bubble)
    -- check that we are not outside the 'board' and there is a bubble here
    if (y < 1 or y > #self.map) or (x < 1 or x > #self.map[y]) or not self.map[y][x] then return end
    
    local bubbleHere = self.map[y][x]
    if bubbleHere.color ~= bubble.color then return end

    if self.alreadyChecked[x..''..y] == true then return end
    
    self.ballBag:push(bubbleHere)

    self.alreadyChecked[x..''..y] = true 
    
    if y%2 == 0 then -- ligne de 7
        self:flood(x+1, y+1, bubble) --sud ouest
        self:flood(x, y+1, bubble) --sud est
        self:flood(x, y-1, bubble) --nord ouest
        self:flood(x+1, y-1, bubble) --nord ouest
    else -- ligne de 8
        self:flood(x-1, y+1, bubble) --sud ouest
        self:flood(x, y+1, bubble) --sud est
        self:flood(x-1, y-1, bubble) --nord ouest
        self:flood(x, y-1, bubble) --nord ouest
    end

    self:flood(x-1, y, bubble)
    self:flood(x+1, y, bubble)
    return
end

function Map:resetBag()
    self.ballBag = Stack()
    self.alreadyChecked = {}
    self.connectedBalls = {}
end

return Map
