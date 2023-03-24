Enemy = Object:extend()

function Enemy:new()
  self.image = love.graphics.newImage("assets/img/snake.png")
  self.x = 325
  self.y = 450
  self.speed = 100
  self.width = self.image:getWidth()
  self.colBox = Rectangle(self.x, self.y, self.width, self.image:getHeight())
end

function Enemy:update(dt)
  -- normal movement
  local move_delta = self.speed * dt
  self.x = self.x + move_delta
  -- hit left side
  if self.x < 0 then
    self.x = 0
    self.speed = -self.speed
  end
  -- hit right side
  local wind_width = love.graphics.getWidth()
  if self.x > (wind_width - self.width) then
    self.x = wind_width - self.width
    self.colBox.x = self.x
    self.speed = -self.speed
  end
  -- update box
  self.colBox.x = self.x
end

function Enemy:draw()
  love.graphics.draw(self.image, self.x, self.y)
end
