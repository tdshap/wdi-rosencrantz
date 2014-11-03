name = ["sean", "jeff", "neel"]

new_names1 = name.map do |x|
	x.capitalize
end 


new_names = name.map { |x| x.capitalize }


print new_names1
print new_names