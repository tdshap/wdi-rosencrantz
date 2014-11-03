require_relative "./comedian"

c1 = Comedian.new("joke1")
c2 = Comedian.new("joke2")
c3 = Comedian.new("joke3")
c1.say_joke
c2.say_joke
c3.say_joke


def say_all_jokes(array)
	array.each do |comedian|
		comedian.say_joke
	end 
end 


funny = [c1, c2, c3]

say_all_jokes(funny)