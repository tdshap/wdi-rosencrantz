require "pry"
numbers = [*1...1000]
sum = 0
numbers.each do |num|
	if num % 3 == 0 || num % 5 == 0 
		puts num
		sum += num
	end 
end 
puts sum
