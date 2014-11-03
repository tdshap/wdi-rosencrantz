require "pry"
class Bob
	def hey(something)
		word_array = something.split(" ")
		i=0
		counter = 0
		while i < word_array.length 
			if word_array[i].upcase == word_array[i]
				counter += 1
			end 
			i+=1
		end 
		if counter = word_array.length 
			return "Whoa, chill out!"
		elsif 2 > counter && counter > word_array.length 
			return "Whatever" 
		elsif something[something.length-1] == "?" && counter != word_array.length
			"Sure."
		else 
			hey2(something)
		end 
	end 

	def hey2(something)
		if (something == 'Tom-ay-to, tom-aaaah-to.') || (something[something.length-1] == "!")
			"Whatever."
		# elsif something[something.length-1] == "?"
		# 	"Sure."
		else
			"Whoa, chill out!"
		end 
	end 

end 