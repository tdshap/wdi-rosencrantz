require_relative "./comedian2"
require "pry"
require "sinatra"
require "sinatra/reloader"
require "json"

c1 = Comedian2.new("joke1")
c2 = Comedian2.new("joke2")
c3 = Comedian2.new("joke3")
array = [c1, c2, c3]

get ("/joke") do 
	comedian = array[rand(array.length)]
	
	return comedian.get_joke.to_json
end 

post ("/joke") do 
	binding.pry
	array.push(Comedian.new(params["joke"]))

end 