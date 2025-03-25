--Global
require('includes')
require('gameStates/states')

function love.load(args)
  GS.registerEvents()
  GS.switch(MenuState)
end

function love.update(dt)
  Lovebird.update()
end

function love.draw()
end

function love.keypressed(key, code)
end