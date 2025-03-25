local TestFloodAlg = {}

local Map = require('src/testMap')
local map = nil

-- CONST
mousePos = {['x'] = 0, ['y'] = 0}
mousePosBlock = {['x'] = 0, ['y'] = 0}

-- Called once, and only once, before entering the state the first time. See Gamestate.switch().
function TestFloodAlg:init()
    BLOCKSIZE = 16
    SCALE     = 2
  map = Map:getMap()
  -- self.player = {}
  -- self.player.x = 0
  -- self.player.y = 0
  -- self.camera = Camera(self.player.x, self.player.y)
end

--Called every time when entering the state. See Gamestate.switch().
function TestFloodAlg:enter(previous)
  print('enter')
  map = Map:getMap()
end

--Called when leaving a state. See Gamestate.switch() and Gamestate.pop().
function TestFloodAlg:leave()
end

--Called when re-entering a state by Gamestate.pop()-ing another state.
function TestFloodAlg:resume()
end

function TestFloodAlg:update(dt)
  mousePos['x'], mousePos['y'] = love.mouse.getPosition()

  mousePosBlock['x'] = math.floor(mousePos['x'] / BLOCKSIZE / SCALE) + 1
  mousePosBlock['y'] = math.floor(mousePos['y'] / BLOCKSIZE / SCALE) + 1
end

function TestFloodAlg:draw()
  love.graphics.print('game x: '..mousePos['x']..'; y: '..mousePos['y'], 0, 0)
  love.graphics.print('game x: '..mousePosBlock['x']..'; y: '..mousePosBlock['y'], 0, 16)
  for yy=1, #map do
    for xx=1, #map[yy] do
      if map[yy][xx] == 1 then
        love.graphics.rectangle (
          'fill',
          (xx - 1) * BLOCKSIZE * SCALE,
          (yy - 1) * BLOCKSIZE * SCALE,
          BLOCKSIZE * SCALE, BLOCKSIZE * SCALE
        )
      end
    end
  end

  love.graphics.rectangle (
    'line',
    (mousePosBlock['x'] - 1) * BLOCKSIZE * SCALE,
    (mousePosBlock['y'] - 1) * BLOCKSIZE * SCALE,
    BLOCKSIZE * SCALE, BLOCKSIZE * SCALE
  )

end

--Called if the window gets or loses focus.
function TestFloodAlg:focus()
end

function TestFloodAlg:keypressed(key, code)
  if key == 'escape' then GS.switch(MenuState) end
end

function TestFloodAlg:keyreleased()
end

function TestFloodAlg:mousepressed()
end

function TestFloodAlg:mousereleased(x, y, button)

  if (button == 1) then
    floodStack(mousePosBlock['x'], mousePosBlock['y'])
  end

end

function TestFloodAlg:joystickpressed()
end

function TestFloodAlg:joystickreleased()
end

function TestFloodAlg:quit()
end

function flood(x,y)
  if (x < 1 or x > #map[1]) or (y < 1 or y > #map) then return end

  if map[y][x] == 1 then return end

  map[y][x] = 1

  flood(x, y+1) -- sud
  flood(x, y-1) -- nord
  flood(x-1, y) --ouest
  flood(x+1, y) --est
  return
end


function floodStack(x, y)

  if (x < 1 or x > #map[1]) or (y < 1 or y > #map) then return end

  local stack = Stack()

  stack:push({
    ['value'] = map[y][x],
    ['x'] = x,
    ['y'] = y
  })
  
  while stack.count > 0 do
    local p = stack:pop()

    if p['value'] == 0 then

      map[p['y']][p['x']] = 1

      if not( (p['x'] - 1 < 1 or p['x'] - 1 > #map[1]) or (p['y'] < 1 or p['y'] > #map) ) then
        stack:push({
          ['value'] = map[p['y']] [p['x']-1],
          ['x'] = p['x'] - 1,
          ['y'] = p['y']
        })
      end
      if not( (p['x'] + 1 < 1 or p['x'] + 1 > #map[1]) or (p['y'] < 1 or p['y'] > #map) ) then
        stack:push({
          ['value'] = map[p['y']] [p['x']+1],
          ['x'] = p['x'] + 1,
          ['y'] = p['y']
        })
      end
      if not( (p['x'] < 1 or p['x'] > #map[1]) or (p['y'] + 1 < 1 or p['y'] + 1 > #map) ) then
        stack:push({
          ['value'] = map[p['y']+1] [p['x']],
          ['x'] = p['x'],
          ['y'] = p['y'] + 1
        })
      end
      if not( (p['x'] < 1 or p['x'] > #map[1]) or (p['y'] - 1 < 1 or p['y'] - 1 > #map) ) then
        stack:push({
          ['value'] = map[p['y']-1] [p['x']],
          ['x'] = p['x'],
          ['y'] = p['y'] - 1
        })
      end
    end
  end
  -- print(stackMax)
end

return TestFloodAlg
