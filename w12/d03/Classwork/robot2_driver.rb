require_relative "./robot2"

robot = Robot2.new

puts robot.phrase


i = 0 
array_of_bots = []
while i < 10 
	robot = Robot2.new
	array_of_bots.push(robot)
	i+=1
end 


array_of_bots.each do |robot|
	puts robot.phrase
end 