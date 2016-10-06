require 'robot_arm'
robot_arm:random_level(1)
robot_arm.speed = 0.88

nill = false

for i = 1, 9 do
  robot_arm:grab()
    if  robot_arm:scan() == "nill" then  
        robot_arm:drop()
        robot_arm:move_right()
    end
  if robot_arm:scan() ~= "nill" then 
      robot_arm:move_right()
     robot_arm:drop()
  end
end
