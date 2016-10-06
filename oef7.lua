require 'robot_arm'
robot_arm:load_level('exercise 8')
for i=1, 7 do
robot_arm:move_right()
robot_arm:grab()
for i=1, 8 do
  robot_arm:move_right()
end
robot_arm:drop()
for i=1, 9 do
  robot_arm:move_left()
end
end