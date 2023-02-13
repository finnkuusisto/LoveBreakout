function love.load()
  listOfRectangles = {}
end

function love.update(dt)
  for i = 1,#listOfRectangles do
    rect = listOfRectangles[i]
    moveDelta = dt * rect.speed
    if love.keyboard.isDown("right") then
      rect.x = rect.x + moveDelta
    end
    if love.keyboard.isDown("left") then
      rect.x = rect.x - moveDelta
    end
    if love.keyboard.isDown("up") then
      rect.y = rect.y - moveDelta
    end
    if love.keyboard.isDown("down") then
      rect.y = rect.y + moveDelta
    end
  end
end

function love.draw()
  for i = 1,#listOfRectangles do
    rect = listOfRectangles[i]
    love.graphics.rectangle("line", rect.x, rect.y, rect.w, rect.h)
  end
end

function love.keypressed(key)
  if key == "space" then
    createRect()
  end
  if key == "escape" then
    love.event.quit()
  end
end

function createRect()
  rect = {}
  rect.w = 100
  rect.h = 100
  rect.x = 100
  rect.y = 100
  rect.speed = 100
  table.insert(listOfRectangles, rect)
end
