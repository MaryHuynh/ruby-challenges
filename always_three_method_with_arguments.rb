def always_three(user_number)
	final_number = (2*(user_number+5)-4)/2 - user_number
	puts "Always #{final_number}"
end

puts "Give me a number"
always_three(gets.to_i)