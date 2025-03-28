local assets = {}

assets.atlas = love.graphics.newImage('assets/Sprites.png')

assets.bubbles = {}

assets.bubbles.blue = {}
assets.bubbles.blue.idle = {
    -- [0] = love.graphics.newQuad(1,  1854, 16, 16, assets.atlas:getDimensions()),
    [0] = love.graphics.newQuad(18, 1854, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(35, 1854, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(52, 1854, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.blue.falling = assets.bubbles.blue.idle
assets.bubbles.blue.inserted = {
    [0] = love.graphics.newQuad(69,  1854, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(86,  1854, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(103, 1854, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(120, 1854, 16, 16, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(136, 1854, 16, 16, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(154, 1854, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.blue.exploding = {
    [0] = love.graphics.newQuad(171, 1846, 32, 32, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(204, 1846, 32, 32, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(237, 1846, 32, 32, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(270, 1846, 32, 32, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(303, 1846, 32, 32, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(336, 1846, 32, 32, assets.atlas:getDimensions()),
    [6] = love.graphics.newQuad(369, 1846, 32, 32, assets.atlas:getDimensions()),
}

assets.bubbles.red = {}
assets.bubbles.red.idle = {
--    [0] = love.graphics.newQuad(1,  1887, 16, 16, assets.atlas:getDimensions()),
   [0] = love.graphics.newQuad(18, 1887, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.red.inserted = {
    [0] = love.graphics.newQuad(69,  1887, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(86,  1887, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(103, 1887, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(120, 1887, 16, 16, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(136, 1887, 16, 16, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(154, 1887, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.red.falling = assets.bubbles.red.idle
assets.bubbles.red.exploding = {
    [0] = love.graphics.newQuad(171, 1846, 32, 32, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(204, 1846, 32, 32, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(237, 1846, 32, 32, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(270, 1846, 32, 32, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(303, 1846, 32, 32, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(336, 1846, 32, 32, assets.atlas:getDimensions()),
    [6] = love.graphics.newQuad(369, 1846, 32, 32, assets.atlas:getDimensions()),
}

assets.bubbles.purple = {}
assets.bubbles.purple.idle = {
    -- [0] = love.graphics.newQuad(1,  1920, 16, 16, assets.atlas:getDimensions()),
    [0] = love.graphics.newQuad(18, 1920, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(35, 1920, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(52, 1920, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.purple.inserted = {
    [0] = love.graphics.newQuad(69,  1920, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(86,  1920, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(103, 1920, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(120, 1920, 16, 16, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(136, 1920, 16, 16, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(154, 1920, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.purple.falling = assets.bubbles.purple.idle
assets.bubbles.purple.exploding = {
    [0] = love.graphics.newQuad(171, 1912, 32, 32, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(204, 1912, 32, 32, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(237, 1912, 32, 32, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(270, 1912, 32, 32, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(303, 1912, 32, 32, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(336, 1912, 32, 32, assets.atlas:getDimensions()),
    [6] = love.graphics.newQuad(369, 1912, 32, 32, assets.atlas:getDimensions()),
}


assets.bubbles.gray = {}
assets.bubbles.gray.idle = {
    -- [0] = love.graphics.newQuad(1,  1953, 16, 16, assets.atlas:getDimensions()),
    [0] = love.graphics.newQuad(18, 1953, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(35, 1953, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(52, 1953, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.gray.inserted = {
    [0] = love.graphics.newQuad(69,  1953, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(86,  1953, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(103, 1953, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(120, 1953, 16, 16, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(136, 1953, 16, 16, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(154, 1953, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.gray.falling = assets.bubbles.gray.idle
assets.bubbles.gray.exploding = {
    [0] = love.graphics.newQuad(171, 1912, 32, 32, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(204, 1912, 32, 32, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(237, 1912, 32, 32, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(270, 1912, 32, 32, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(303, 1912, 32, 32, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(336, 1912, 32, 32, assets.atlas:getDimensions()),
    [6] = love.graphics.newQuad(369, 1912, 32, 32, assets.atlas:getDimensions()),
}

assets.bubbles.black  = {}
assets.bubbles.black.idle  = {}

assets.bubbles.yellow  = {}
assets.bubbles.yellow.idle  = {
    -- [0] = love.graphics.newQuad(555, 1854, 16, 16, assets.atlas:getDimensions()),
    [0] = love.graphics.newQuad(572, 1854, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(589, 1854, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(606, 1854, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.yellow.inserted = {
    [0] = love.graphics.newQuad(623, 1854, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(640, 1854, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(657, 1854, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(674, 1854, 16, 16, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(691, 1854, 16, 16, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(708, 1854, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.yellow.falling = assets.bubbles.yellow.idle
assets.bubbles.yellow.exploding = {
    [0] = love.graphics.newQuad(725, 1846, 32, 32, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(758, 1846, 32, 32, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(791, 1846, 32, 32, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(824, 1846, 32, 32, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(857, 1846, 32, 32, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(890, 1846, 32, 32, assets.atlas:getDimensions()),
    [6] = love.graphics.newQuad(923, 1846, 32, 32, assets.atlas:getDimensions()),
}

assets.bubbles.green  = {}
assets.bubbles.green.idle  = {
    -- [0] = love.graphics.newQuad(555, 1887, 16, 16, assets.atlas:getDimensions()),
    [0] = love.graphics.newQuad(572, 1887, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(589, 1887, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(606, 1887, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.green.inserted = {
    [0] = love.graphics.newQuad(623, 1887, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(640, 1887, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(657, 1887, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(674, 1887, 16, 16, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(691, 1887, 16, 16, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(708, 1887, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.green.falling = assets.bubbles.green.idle
assets.bubbles.green.exploding = {
    [0] = love.graphics.newQuad(725, 1879, 32, 32, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(758, 1879, 32, 32, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(791, 1879, 32, 32, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(824, 1879, 32, 32, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(857, 1879, 32, 32, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(890, 1879, 32, 32, assets.atlas:getDimensions()),
    [6] = love.graphics.newQuad(923, 1879, 32, 32, assets.atlas:getDimensions()),
}


assets.bubbles.orange  = {}
assets.bubbles.orange.idle  = {
    -- [0] = love.graphics.newQuad(555, 1920, 16, 16, assets.atlas:getDimensions()),
    [0] = love.graphics.newQuad(572, 1920, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(589, 1920, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(606, 1920, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.orange.inserted = {
    [0] = love.graphics.newQuad(623, 1920, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(640, 1920, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(657, 1920, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(674, 1920, 16, 16, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(691, 1920, 16, 16, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(708, 1920, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.orange.falling = assets.bubbles.orange.idle
assets.bubbles.orange.exploding = {
    [0] = love.graphics.newQuad(725, 1912, 32, 32, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(758, 1912, 32, 32, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(791, 1912, 32, 32, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(824, 1912, 32, 32, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(857, 1912, 32, 32, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(890, 1912, 32, 32, assets.atlas:getDimensions()),
    [6] = love.graphics.newQuad(923, 1912, 32, 32, assets.atlas:getDimensions()),
}


assets.bubbles.white           = {}
assets.bubbles.white.idle           = {
    -- [0] = love.graphics.newQuad(555, 1953, 16, 16, assets.atlas:getDimensions()),
    [0] = love.graphics.newQuad(572, 1953, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(589, 1953, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(606, 1953, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.white.inserted = {
    [0] = love.graphics.newQuad(623, 1953, 16, 16, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(640, 1953, 16, 16, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(657, 1953, 16, 16, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(674, 1953, 16, 16, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(691, 1953, 16, 16, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(708, 1953, 16, 16, assets.atlas:getDimensions()),
}
assets.bubbles.white.falling = assets.bubbles.white.idle
assets.bubbles.orange.exploding = {
    [0] = love.graphics.newQuad(725, 1945, 32, 32, assets.atlas:getDimensions()),
    [1] = love.graphics.newQuad(758, 1945, 32, 32, assets.atlas:getDimensions()),
    [2] = love.graphics.newQuad(791, 1945, 32, 32, assets.atlas:getDimensions()),
    [3] = love.graphics.newQuad(824, 1945, 32, 32, assets.atlas:getDimensions()),
    [4] = love.graphics.newQuad(857, 1945, 32, 32, assets.atlas:getDimensions()),
    [5] = love.graphics.newQuad(890, 1945, 32, 32, assets.atlas:getDimensions()),
    [6] = love.graphics.newQuad(923, 1945, 32, 32, assets.atlas:getDimensions()),
}
return assets