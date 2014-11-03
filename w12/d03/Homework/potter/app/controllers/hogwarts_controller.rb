class HogwartsController < ApplicationController

	def create
		school = Hogwarts.create({
			name: params["name"]
			})
		render :json => 
	end
	def destroy 
		school = Hogwarts.find(params["id"])
		school.destroy
		render :json => "school was destroyed"
	end 

end 