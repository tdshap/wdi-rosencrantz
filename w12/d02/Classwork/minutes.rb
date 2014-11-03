def same_part_of_day(start_hours, end_hours, start_minutes, end_minutes)
	if (end_hours.to_i - start_hours.to_i) < 0 
		total_hours = (end_hours.to_i - start_hours.to_i) + 12 
		total_minutes = total_hours * 60
	else 
		total_hours = end_hours.to_i - start_hours.to_i
		total_minutes = total_hours * 60
	end 
	return total_minutes += end_minutes.to_i - start_minutes.to_i 
end 

def different_part_of_day(start_hours, end_hours, start_minutes, end_minutes)
	if end_hours.to_i - start_hours.to_i != 0 
		total_hours = (end_hours.to_i - start_hours.to_i) + 12
		total_minutes = total_hours * 60
	else 
		total_hours = 12
		total_minutes = total_hours.to_i * total_minutes.to_i
	end 
	return total_minutes += end_minutes.to_i - start_minutes.to_i
end 

def counting_time(time)
	two_times_split = time.split("-")
	# [12:30pm, 1:30pm]
	start_time = two_times_split[0]
	end_time = two_times_split[1]
	
	start_hours = start_time.split(":")[0]
	# 12
	start_minutes_with_am_pm = start_time.split(":")[1]
	# 30pm
	start_minutes = start_minutes_with_am_pm[0..1]
	# 30
	
	end_hours = end_time.split(":")[0]
	# 1
	end_minutes_with_am_pm = end_time.split(":")[1]
	# 30pm
	end_minutes = end_minutes_with_am_pm[0..1]
	# 30


	if start_time.index("pm") != nil && end_time.index("pm") != nil
		puts total_minutes = same_part_of_day(start_hours, end_hours, start_minutes, end_minutes)
	end  
	if start_time.index("am") != nil && end_time.index("am") != nil
		puts total_minutes = same_part_of_day(start_hours, end_hours, start_minutes, end_minutes)
	end 
	if start_time.index("am") != nil && end_time.index("pm") != nil
		puts different_part_of_day(start_hours, end_hours, start_minutes, end_minutes)
	end 
	if start_time.index("pm") != nil && end_time.index("am") != nil
		puts different_part_of_day(start_hours, end_hours, start_minutes, end_minutes)
	end 
end 

counting_time("1:23am-1:08am")
counting_time("12:30pm-12:00am")



