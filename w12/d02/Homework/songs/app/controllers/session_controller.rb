class SessionController < ApplicationController
	def new
		render :new
	end 
	def create 
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.user_id
			redirect_to "/songs"
		else
			@error = true
			render :new
		end 
	end 

end 