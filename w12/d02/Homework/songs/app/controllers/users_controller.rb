class UsersController < ApplicationController
	def create
		user = User.create({
			name: params["name"],
			email: params["email"],
			password: params["password"]
			})
		if user
			redirect_to "/login"
		else
			@error = true
			render :index
	end 


end 