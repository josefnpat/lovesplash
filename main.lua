require("lovesplash/lovesplash")

state = "lovesplash"

function love.draw()
  if state == "lovesplash" then
    lovesplash.draw()
  end
end

function love.update(dt)
  if state == "lovesplash" then
    lovesplash.update(dt)
    if lovesplash.done() then
      state = "notlovesplash"
    end
  end
end

function love.keypressed()
  if state == "lovesplash" then
    lovesplash.stop()
  else
    love.event.quit()
  end
end

function love.mousepressed()
  if state == "lovesplash" then
    lovesplash.stop()
  else
    love.event.quit()
  end
end
