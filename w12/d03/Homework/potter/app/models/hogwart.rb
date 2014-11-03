class Hogwarts < House
	has_many :houses
	has_many :students through: :house 
end