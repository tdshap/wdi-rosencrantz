require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get("/") do
	students = JSON.parse(File.read("./students.txt"))
erb(:index{ locals: {students: students}})
end


post("/students") do
	first_name = params["first"]
	last_name= params["last"]
	email = params["email"]

	person= {"first" => first_name, "last" => last_name, "email" => email}
	students = JSON.parse(File.read("./students.txt"))
	students.push(person)


#could also 
#students_json= JSON.generate(students)
# and File.write("./students.txt", students_json)

	File.write("./students.txt", students.to_json)
erb(:index {locals: {students: students}})

end


get("/students") do

erb(:students)
end

