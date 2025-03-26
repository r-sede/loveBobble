local GameState = {}

local Map = require('src/map')

require('src/Bubble')

local playerBubble = nil
-- Called once, and only once, before entering the state the first time. See Gamestate.switch().
function GameState:init()

end


--Called every time when entering the state. See Gamestate.switch().
function GameState:enter(previous)
  Map:resetMap()
  Map:fillRandomMap(3, {'red', 'green', 'blue', 'yellow'})
  playerBubble = Bubble('green', 1 , 4)
end

--Called when leaving a state. See Gamestate.switch() and Gamestate.pop().
function GameState:leave()
end

--Called when re-entering a state by Gamestate.pop()-ing another state.
function GameState:resume()
end     

function GameState:update(dt)
  playerBubble:update(dt)
  -- playerCursor = (playerCursor-1 % 7)
  -- playerColorCursor = (playerColorCursor-1 %4)
  -- playerBubble.tableX = playerCursor
end

function GameState:draw()
  love.graphics.print('game', 0, 0)
  Map:draw()
  playerBubble:draw()
end

--Called if the window gets or loses focus.
function GameState:focus()
end

function GameState:keypressed(key, code)
  if key == 'escape' then
    GS.switch(MenuState)
  elseif key == 'right' then
    playerBubble.tableX = playerBubble.tableX + 1
  elseif key == 'left' then
    playerBubble.tableX = playerBubble.tableX - 1
  elseif key == 'up' then
    playerColorCursor = playerColorCursor + 1
  elseif key == 'down' then
    playerColorCursor = playerColorCursor - 1
  elseif key == 'return' then
    -- print(playerBubble.color)
    Map:insertIn(playerBubble.tableX, 4, playerBubble.color)
  end



   
end

function GameState:keyreleased()
end

function GameState:mousepressed()
end

function GameState:mousereleased()
end

function GameState:joystickpressed()
end

function GameState:joystickreleased()
end

function GameState:quit()
end

return GameState
