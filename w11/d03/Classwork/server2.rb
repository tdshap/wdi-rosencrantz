require "sinatra"
require "sinatra/reloader"

use Rack::Session::Cookie, {
	:key => "rack.session",
	:path => "/",
	:secret => "monkeybrains"
}
user ={}

get ("/signup/:name/:password") do 
	user[params["name"]] = params["password"]
	return "you have signed up!"
end 

get ("/signin/:name/:password") do 
	if user[params["name"]] == params["password"]
		session["email"] = params["name"]
		return "cookie recorded"
	else 
		return "you suck"
	end 
end 

get ("/see_cookie") do 
	return session["name"]

end 


# get ("/another_record/:name") do 
# 	session[:name] = params[:name]
# 	"another cookie recorded"
# end 