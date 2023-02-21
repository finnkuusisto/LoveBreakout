local listOfShapes = {}

function love.load()
  love.graphics.setBackgroundColor(1, 0, 1)
  tick = require "lib/tick/tick"
  Object = require("lib/classic/classic")
  require("shape")
  require("rectangle")
  require("circle")
  
  sheep = love.graphics.newImage("assets/img/sheep.png")
  sheep_w = sheep:getWidth()
  sheep_h = sheep:getHeight()
  
  main_rect = Rectangle(100, 100)
  
  --tick.recur(createShape, 1)
end

function love.update(dt)
  tick.update(dt)
--  for i = 1,#listOfShapes do
--    local shp = listOfShapes[i]
--    shp:update(dt)
--  end
  main_rect:update(dt)
end

function love.draw()
  love.graphics.draw(sheep, 100, 100, 0, 1, 1, sheep_w/2, sheep_h/2)
  love.graphics.setColor(1, 0.78, 0.15, 0.5)
  love.graphics.draw(sheep, 100, 100, math.pi/2, 1, 1, sheep_w/2, sheep_h/2)
  love.graphics.setColor(1, 1, 1, 1)
  
  for i = 1,#listOfShapes do
    local shp = listOfShapes[i]
    -- draw it different color if rectangle and intersecting
    if shp:shape() == "rectangle" and shp:collidesWith(main_rect) then
        love.graphics.setColor(1, 0, 0, 1)
    end
    shp:draw()
    love.graphics.setColor(1, 1, 1, 1)
  end
  main_rect:draw()
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
