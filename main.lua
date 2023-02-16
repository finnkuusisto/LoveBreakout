local listOfShapes = {}

function love.load()
  tick = require "lib/tick/tick"
  Object = require("lib/classic/classic")
  require("shape")
  require("rectangle")
  require("circle")
  
  tick.recur(createShape, 1)
end

function love.update(dt)
  tick.update(dt)
  for i = 1,#listOfShapes do
    local shp = listOfShapes[i]
    shp:update(dt)
  end
end

function love.draw()
  for i = 1,#listOfShapes do
    local shp = listOfShapes[i]
    shp:draw()
  end
end

function love.keypressed(key)
  if key == "space" then
    createShape()
  end
  if key == "escape" then
    love.event.quit()
  end
end

function createShape()
  local x = math.random(250, 350)
  local y = math.random(200, 300)
  local shp = nil
  if math.random() < 0.5 then
    shp = Rectangle(x, y)
  else
    shp = Circle(x, y)
  end
  table.insert(listOfShapes, shp)
end
