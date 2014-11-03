def twisted_fizzbuzz(num)
	array = [*0...num]
	array.each do |a|
		if a % 3 == 0 || a % 5 == 0 
			if a % 15 != 0
				puts a
			end 
		end 
	end 
end 

twisted_fizzbuzz(80)
