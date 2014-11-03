class Bob
	def hey(something)
		word_array_dash = something.split("-")
		word_array = something.split(" ")
		counter = 0
		
		word_array.each do |word|
			if word == word.upcase
				counter += 1
			end 
		end 

		last_char = something[something.length+1]

		characters = word_array.split("")


		word_array_dash.each do |word|
			if word.downcase == "tom"
				return "Whatever."
			end 
		end 
	
		if (counter == word_array.length) && last_char == "!"
			return "Whoa, chill out!"
		end
	end 

end 