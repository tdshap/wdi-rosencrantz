require_relative "./comedian"


class Comedian2 < Comedian 
	include Math
	def get_joke
		return @joke
	end 
end 


comedian = Comedian2.new("asdfasdf")

puts comedian.get_joke