local GameState = {}

-- Called once, and only once, before entering the state the first time. See Gamestate.switch().
function GameState:init()
  self.player = {}
  self.player.x = 0
  self.player.y = 0
  self.camera = Camera(self.player.x, self.player.y)
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
