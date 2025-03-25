
local Map = {}

Map.map = {}


function Map:getMap()
    return self.map
end

function Map:resetMap()
    self.map = {
        {0, 0, 0, 0, 0, 0, 0, 0},
          {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
          {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
          {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
          {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
          {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
          {0, 0, 0, 0, 0, 0, 0},
    }
    for yy = 1, #self.map do
        for xx = 1, #self.map[yy] do
            self.map[yy][xx] = {
                ['value'] = nil,
            }
        end
    end
end

function Map:fillRandomMap(lineToFill, avalaibleToken)
    for yy = 1, math.min(lineToFill, #self.map) do
        for xx = 1, #self.map[yy] do
            local token = avalaibleToken[math.random(#avalaibleToken)]
            self.map[yy][xx] = token
        end
    end
end

function Map:draw()
    local xxTodraw = nil
    for yy = 1, #self.map do
        for xx = 1, #self.map[yy] do
            if self.map[yy][xx] ~= 0 then 
                if yy%2 == 0 then
                    xxTodraw = (xx - 1) * BLOCKSIZE * SCALE + (0.5 * BLOCKSIZE * SCALE)
                else
                    xxTodraw = (xx - 1) * BLOCKSIZE * SCALE
                end

                love.graphics.draw(
                    self.Texture[self.map[yy][xx]],
                    xxTodraw,
                    (yy - 1) * BLOCKSIZE * SCALE, -- - ( (yy-1) * BLOCKSIZE * SCALE * 0.125),
                    0,
                    SCALE,
                    SCALE
                )
            end
        end
    end
end


function Map:insertIn(x, y, color)
    local token = nil

    if color == 0 then
        token = 'r'
    elseif color == 1 then
        token = 'g'
    elseif color == 2 then
        token ='b'
    end

    self.map[y][x] = token
    self:flood(x, y, token)

    if (self.ballBag.count > 2) then
        while self.ballBag.count > 0 do
            local p = self.ballBag:pop()
            self.map[p['y']][p['x']] = 0
        end
    end



    for xx = 1, #self.map[1] do
        self:searchConnected(xx, 1)
    end
    for yy = 1, #self.map do
        for xx = 1, #self.map[yy] do
            if not self.connectedBalls[xx..''..yy] then
                self.map[yy][xx] = 0
            end
        end
    end
    self.ballBag = Stack()
    self.alreadyChecked = {}
    self.connectedBalls = {}
end

function Map:searchConnected(x, y)
    if (y < 1 or y > #self.map) or (x < 1 or x > #self.map[y]) then return end
  
    if self.map[y][x] == 0 then return end

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

function Map:flood(x, y, token)
    if (y < 1 or y > #self.map) or (x < 1 or x > #self.map[y]) then return end
  
    if self.map[y][x] ~= token then return end

    if self.alreadyChecked[x..''..y] == true then return end
    
    self.ballBag:push(
        {['x']=x, ['y']=y}
    )
    -- print(x..''..y)

    self.alreadyChecked[x..''..y] = true 
    
    if y%2 == 0 then -- ligne de 7
        self:flood(x+1, y+1, token) --sud ouest
        self:flood(x, y+1, token) --sud est
        self:flood(x, y-1, token) --nord ouest
        self:flood(x+1, y-1, token) --nord ouest
    else -- ligne de 8
        self:flood(x-1, y+1, token) --sud ouest
        self:flood(x, y+1, token) --sud est
        self:flood(x-1, y-1, token) --nord ouest
        self:flood(x, y-1, token) --nord ouest
    end

    self:flood(x-1, y, token)
    self:flood(x+1, y, token)
    return
end


return Map
