#gets method automatically has "newline" at the end
#use gets.chomp to make sure everything stays on one line after using "gets" method

def name_input
	puts("What's your name?")
	name = gets.chomp
end

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting
	name = name_input
	
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	
	puts("Good #{time}, #{name.capitalize}!")
end

greeting