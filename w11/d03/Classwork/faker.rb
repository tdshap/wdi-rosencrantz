require "faker"
require "pry"
hash = {}

class Person 
# short hand getter
	attr_accessor :name, :phone_number

# setter
	def initialize 
		@name = Faker::Name.name
		@phone_number = Faker::PhoneNumber.phone_number
	end

# getter methods
	# def name
	# 	return @name
	# end 
end 

i = 0
while i < 1000
	hash["#{i}"] = Person.new
	i += 1
end 

puts hash

#Another way! #####################################


# class User
# 	def initialize(name, phone_number)
# 		@name = name
# 		@phone_number = phone_number
# 	end 
# end 

