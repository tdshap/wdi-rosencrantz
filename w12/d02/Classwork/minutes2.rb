def counting_minutes(time)
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
		# start time into minutes
		start_time_24 = start_hours % 12 + 12

		start_minutes_from_midnight = start_time_24 * 60 
		start_minutes_from_midnight += start_minutes

		# end time into minutes
		end_time_24 = end_hours % 12 + 12
		end_minutes_from_midnight = end_time_24 * 60
		end_minutes_from_midnight += end_minutes

		end_minutes_from_midnight - start_minutes_from_midnight


end 