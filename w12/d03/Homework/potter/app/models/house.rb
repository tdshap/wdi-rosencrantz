class House < Student
	has_many :students
	belongs_to :hogwart 
end 