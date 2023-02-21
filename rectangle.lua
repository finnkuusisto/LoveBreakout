Rectangle = Shape:extend()

function Rectangle:new(x, y)
  Rectangle.super.new(self, x, y)
  self.w = math.random(50, 250)
  self.h = math.random(50, 250)
end

function Rectangle:draw()
  love.graphics.rectangle("line", self.x, self.y, self.w, self.h)
end

function Rectangle:collidesWith(rect)
  local s_lft = self.x
  local s_rgt = self.x + self.w
  local s_top = self.y
  local s_bot = self.y + self.h
  
  local o_lft = rect.x
  local o_rgt = rect.x + rect.w
  local o_top = rect.y
  local o_bot = rect.y + rect.h
  
  return s_lft < o_rgt
    and s_rgt > o_lft
    and s_top < o_bot
    and s_bot > o_top
end

function Rectangle:shape()
  return "rectangle"
end