class Student
	attr_accessor :name, 
								:points
	
	def initialize(name)
		@name = name
		@points = 0
	end 

	def award_points(num)
		@points += num
		puts @points
	end 

end 





class House < Student
	attr_accessor :name, 
								:students,
								:points 

	def initialize(house)
		@name = house
		@students = Array.new
		@points = 0
	end 

	def add_student(name)
		@students.push(name)
	end 

	def get_student(find_name)
		@students.each do |student|
			if student.name == find_name
				return student
			end 
		end 
	end

	def total_points
		@students.each do |student|
			@points += student.points
			return @points
		end 
	end 
end 



class Hogwarts < House
	attr_accessor :houses,
								:total
	def initialize
		@houses = Array.new
		@total = Hash.new
	end 

	def add_house(house)
		@houses.push(house)
	end 
	def house_totals
		@houses.each do |house|
			@total[(house.name).to_sym] = house.total_points
		end 
		return @total
	end 
end 


