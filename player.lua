Player = Object:extend()

function Player:new()
  self.image = love.graphics.newImage("assets/img/panda.png")
  self.x = 300
  self.y = 20
  self.speed = 500
  self.width = self.image:getWidth()
end

function Player:update(dt)
  -- move left and right with keys
  local moveDelta = dt * self.speed
  if love.keyboard.isDown("right") then
    self.x = self.x + moveDelta
  end
  if love.keyboard.isDown("left") then
    self.x = self.x - moveDelta
  end
  -- but don't go out of frame
  if self.x < 0 then
    self.x = 0
  end
  local wind_width = love.graphics.getWidth()
  if self.x > (wind_width - self.width) then
    self.x = wind_width - self.width
  end
  
end

function Player:draw()
  love.graphics.draw(self.image, self.x, self.y)
end

function Player:keyPressed(key)
  if key == "space" then
    local bul_x = self.x + (self.width / 2)
    table.insert(listOfBullets, Bullet(bul_x, self.y))
  end
end
