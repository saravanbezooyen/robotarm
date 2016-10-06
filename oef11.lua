require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.99

for i = 9, 1 , -1 do
      robot_arm:grab()
  if robot_arm:scan() == "red" then
      for red = 1, i do
        robot_arm:move_right()
      end
      
  robot_arm:drop()
  
    for red = 1, i - 1 do
      robot_arm:move_left()
    end
  end
      if robot_arm:scan() ~= "red" then
        robot_arm:drop()
       robot_arm:move_right()
       end

end