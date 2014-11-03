require_relative './comedian'
require 'pry'


comedians = []

info = {"name" => "sean", "age" => 68, "joke" => "something funny"}
comedians << Comedian.new(info)

info = {"name" => "jeff", "age" => 68, "joke" => "something funny haha"}
comedians << Comedian.new(info)

info = {"name" => "neel", "age" => 68, "joke" => "something funny wow"}
comedians << Comedian.new(info)

comedians.each do |comedian|
	puts "comedian " + comedian.getInfo["name"] + " is " + comedian.getInfo["age"].to_s + " years old and has the joke " + comedian.getInfo["joke"]
end