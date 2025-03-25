local GameState = {}
local Map = nil
-- Called once, and only once, before entering the state the first time. See Gamestate.switch().
function GameState:init()
  -- Map = require('map')
end

--Called every time when entering the state. See Gamestate.switch().
function GameState:enter(previous)
end

--Called when leaving a state. See Gamestate.switch() and Gamestate.pop().
function GameState:leave()
end

--Called when re-entering a state by Gamestate.pop()-ing another state.
function GameState:resume()
end     

function GameState:update(dt)
end

function GameState:draw()
  love.graphics.print('game', 0, 0)
  love.graphics.draw(ASSETS.atlas, ASSETS.bubbles.blue.idle[1], 0*64, 0, 0, SCALE, SCALE)
  love.graphics.draw(ASSETS.atlas, ASSETS.bubbles.red.idle[1], 1*64, 0, 0, SCALE, SCALE)
  love.graphics.draw(ASSETS.atlas, ASSETS.bubbles.purple.idle[1], 2*64, 0, 0, SCALE, SCALE)
  love.graphics.draw(ASSETS.atlas, ASSETS.bubbles.gray.idle[1], 3*64, 0, 0, SCALE, SCALE)
  love.graphics.draw(ASSETS.atlas, ASSETS.bubbles.yellow.idle[1], 4*64, 0, 0, SCALE, SCALE)
  love.graphics.draw(ASSETS.atlas, ASSETS.bubbles.green.idle[1], 5*64, 0, 0, SCALE, SCALE)
  love.graphics.draw(ASSETS.atlas, ASSETS.bubbles.orange.idle[1], 6*64, 0, 0, SCALE, SCALE)
  love.graphics.draw(ASSETS.atlas, ASSETS.bubbles.white.idle[1], 7*64, 0, 0, SCALE, SCALE)
end

--Called if the window gets or loses focus.
function GameState:focus()
end

function GameState:keypressed(key, code)
  if key == 'escape' then GS.switch(MenuState) end
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
