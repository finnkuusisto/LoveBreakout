Shape = Object:extend()

function Shape:new(x, y)
  self.x = x
  self.y = y
  self.speed = math.random(90, 110)
end

function Shape:update(dt)
  local moveDelta = dt * self.speed
  if love.keyboard.isDown("right") then
    self.x = self.x + moveDelta
  end
  if love.keyboard.isDown("left") then
    self.x = self.x - moveDelta
  end
  if love.keyboard.isDown("up") then
    self.y = self.y - moveDelta
  end
  if love.keyboard.isDown("down") then
    self.y = self.y + moveDelta
  end
end

function Shape:shape()
  return "shape"
end
