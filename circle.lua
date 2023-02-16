Circle = Shape:extend()

function Circle:new(x, y)
  Circle.super.new(self, x, y)
  self.radius = math.random(25, 75)
end

function Circle:draw()
  love.graphics.circle("line", self.x, self.y, self.radius)
end
