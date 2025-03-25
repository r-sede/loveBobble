--Global
require('includes')
require('gameStates/states')
 
-- CONST
BLOCKSIZE = 16
SCALE     = 4
ASSETS = nil

function love.load(args)
  love.graphics.setDefaultFilter('nearest', 'nearest')

  ASSETS = require('src/assets')

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