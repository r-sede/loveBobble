local assets = {}

assets.atlas = love.graphics.newImage('assets/Sprites.png')

assets.bubbles = {}

assets.bubbles.blue = {}
assets.bubbles.blue.idle = {
   [0] = love.graphics.newQuad(1,  1854, 16, 16, assets.atlas:getDimensions()),
   [1] = love.graphics.newQuad(18, 1854, 16, 16, assets.atlas:getDimensions()),
   [2] = love.graphics.newQuad(35, 1854, 16, 16, assets.atlas:getDimensions()),
   [3] = love.graphics.newQuad(52, 1854, 16, 16, assets.atlas:getDimensions()),
}

assets.bubbles.red = {}
assets.bubbles.red.idle = {
   [0] = love.graphics.newQuad(1,  1887, 16, 16, assets.atlas:getDimensions()),
   [1] = love.graphics.newQuad(18, 1887, 16, 16, assets.atlas:getDimensions()),
}

assets.bubbles.purple = {}
assets.bubbles.purple.idle = {
    [0] = love.graphics.newQuad(1,  1920, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(18, 1920, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(35, 1920, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(52, 1920, 16, 16, assets.atlas:getDimensions()),
}

assets.bubbles.gray = {}
assets.bubbles.gray.idle = {
    [0] = love.graphics.newQuad(1,  1953, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(18, 1953, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(35, 1953, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(52, 1953, 16, 16, assets.atlas:getDimensions()),
}

assets.bubbles.black  = {}
assets.bubbles.black.idle  = {}

assets.bubbles.yellow  = {}
assets.bubbles.yellow.idle  = {
    [0] = love.graphics.newQuad(555, 1854, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(572, 1854, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(589, 1854, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(606, 1854, 16, 16, assets.atlas:getDimensions()),
}

assets.bubbles.green  = {}
assets.bubbles.green.idle  = {
    [0] = love.graphics.newQuad(555, 1887, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(572, 1887, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(589, 1887, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(606, 1887, 16, 16, assets.atlas:getDimensions()),
}

assets.bubbles.orange  = {}
assets.bubbles.orange.idle  = {
    [0] = love.graphics.newQuad(555, 1920, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(572, 1920, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(589, 1920, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(606, 1920, 16, 16, assets.atlas:getDimensions()),
}

assets.bubbles.white           = {}
assets.bubbles.white.idle           = {
    [0] = love.graphics.newQuad(555, 1953, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(572, 1953, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(589, 1953, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(606, 1953, 16, 16, assets.atlas:getDimensions()),
}

return assets