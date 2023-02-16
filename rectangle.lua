Rectangle = Shape:extend()

function Rectangle:new(x, y)
  Rectangle.super.new(self, x, y)
  self.w = math.random(50, 250)
  self.h = math.random(50, 250)
end

function Rectangle:draw()
  love.graphics.rectangle("line", self.x, self.y, self.w, self.h)
end
