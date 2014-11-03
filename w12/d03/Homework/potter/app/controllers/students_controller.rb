class StudentsController < ApplicationController
	def index
		students = Student.all
		render :json => students
	end 

	def create
		house = House.find_by(name: params["house"])
		student = Student.new({
			name: params["name"],
			points: 0,
			house_id: house.id
		})
		render :json => "#{student.name} was created"
	end 

	def update
		student = Student.find(param["id"])
		if params["name"]
			student.name = params["name"]
		end 
		if params["points"]
			student.points = student.points + params["points"].to_i
		end 
		if params["house"]
			house = House.find_by(name: params["house"])
			student.house_id = house.id
		end 

		student.save
		render :json => "#{student.name} was edited"

	end 

	def show
		student = Student.find(params["id"])
		render :json => student
	end 

	def destroy
		student = Student.find(params["id"])
		student.destroy
		render :json => "student was deleted"
	end 
end 









