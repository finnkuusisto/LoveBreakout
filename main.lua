Object = require("lib/classic/classic")
require("shape")
require("rectangle")
require("player")
require("enemy")
require("bullet")

function love.load()
  player = Player()
  enemy = Enemy()
  listOfBullets = {}
end

function love.update(dt)
  player:update(dt)
  enemy:update(dt)
  
  for i,v in ipairs(listOfBullets) do
    v:update(dt)
    -- check enemy collision or off-screen
    local bul_collides = v.colBox:collidesWith(enemy.colBox)
    local bul_offScreen = v:offScreen()
    if bul_collides or bul_offScreen then
      table.remove(listOfBullets, i)
    end
  end
end

function love.draw()
  player:draw()
  enemy:draw()
  
  for i,v in ipairs(listOfBullets) do
    v:draw()
  end
end

function love.keypressed(key)
  player:keyPressed(key)
end
