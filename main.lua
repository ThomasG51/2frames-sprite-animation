require 'hero'

function love.load()
  hero.sprites[1] = love.graphics.newImage('images/hero1.png')
  hero.sprites[2] = love.graphics.newImage('images/hero2.png')
  hero.positionX = 10
  hero.positionY = 10
end


function love.update(dt)
  -- Sprite active frame
  hero.activeFrame = hero.activeFrame + (2 * dt)
  if hero.activeFrame >= #hero.sprites + 1 then
    hero.activeFrame = 1
  end
  
  -- Sprite movement
  if love.keyboard.isDown('right') then
    hero.positionX = hero.positionX + (100 * dt)
  end
  
  if love.keyboard.isDown('left') then
    hero.positionX = hero.positionX - (100 * dt)
  end
  
  if love.keyboard.isDown('up') then
    hero.positionY = hero.positionY - (100 * dt)
  end
  
  if love.keyboard.isDown('down') then
    hero.positionY = hero.positionY + (100 * dt)
  end
end


function love.draw()
  love.graphics.draw(hero.sprites[math.floor(hero.activeFrame)], hero.positionX, hero.positionY, 0, 1.4, 1.4)
end