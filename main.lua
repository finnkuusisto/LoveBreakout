function love.load()
  circle = {}
  
  circle.x = 100
  circle.y = 100
  circle.radius = 25
  circle.speed = 200
  
  mouse = {}
  mouse.x = circle.x
  mouse.y = circle.y
end

function love.update(dt)
  mouse.x,mouse.y = love.mouse.getPosition()
  angle = math.atan2(mouse.y - circle.y, mouse.x - circle.x)
end

function love.draw()
  love.graphics.circle("line", circle.x, circle.y, circle.radius)
  
  love.graphics.print("angle: " .. angle, 10, 10)
  
  love.graphics.line(circle.x, circle.y, mouse.x, circle.y)
  love.graphics.line(circle.x, circle.y, circle.x, mouse.y)
  
  love.graphics.line(circle.x, circle.y, mouse.x, mouse.y)
end

function love.keypressed(key)
  
end
