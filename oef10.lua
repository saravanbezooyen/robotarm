require 'robot_arm'
robot_arm:load_level('exercise 11')

  robot_arm:move_right()

for i=1, 9 do
    robot_arm:grab()
   if robot_arm:scan() == "white" then
      robot_arm:move_right()
      robot_arm:drop()
      end
 if robot_arm:scan() ~= "white" then
    robot_arm:drop()
    robot_arm:move_right()
    end
end 