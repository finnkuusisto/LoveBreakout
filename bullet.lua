Bullet = Object:extend()

function Bullet:new(x, y)
  self.image = love.graphics.newImage("assets/img/bullet.png")
  self.x = x
  self.y = y
  self.speed = 700
  self.colBox = Rectangle(x, y, self.image:getWidth(), self.image:getHeight())
end

function Bullet:update(dt)
  local move_delta = self.speed * dt
  self.y = self.y + move_delta
  self.colBox.y = self.y
end

function Bullet:draw()
  love.graphics.draw(self.image, self.x, self.y)
end

function Bullet:offScreen()
  return self.y > love.graphics.getHeight()
end
