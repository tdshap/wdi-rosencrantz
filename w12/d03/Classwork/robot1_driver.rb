require_relative "./robot1"

robot = Robot1.new 
robot.speak

robot2 = Robot1.new 
robot2.speak


i=10
array_of_bots = []
while i > 0 
	robot = Robot1.new 
	array_of_bots.push(robot)
	i-=1
end

array_of_bots.each do |robot|
	robot.speak
end 
