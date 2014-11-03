require "sinatra"
require "sinatra/reloader"
require "pry"

users = Hash.new


get ("/") do 

	"Welcome to my website! :) "
end 


# get ("/color") do 
# 	response.headers["Set-Cookie"] = "color=orange; path=/;"
# 	"Cookies sent"
# end

get ("/see_cookie") do 
	request.cookies.to_s
end 

get ("/what_color") do 
	if request.cookies["color"] == "blue"
		return "You have the right color!"
	else 
		return "Your cookie color is wrong!!!"
	end
end 


get ("/signup/:name/:password") do 
	users[params["name"]] = params["password"]
	return "new user, #{params["name"]} created!"
end 


get ("/signin/:name/:password") do 
	if users.has_key?(params["name"]) == true 
		if users[params["name"]] == params["password"]
			response.headers["Set-Cookie"] = "user=#{params["name"]}; path=/;"
			return "cookies sent!"
		else 
			return "Password is incorrect"
		end 
	else 
		return "User name not found. Please sign up!"
	end 
end 


get ("/logout") do 
	response.delete_cookie("user")

end 



get ("/greeting") do 
	if request.cookies["user"]
		"Hello #{request.cookies["user"]}"
	else
		"Please login!"
	end

end 