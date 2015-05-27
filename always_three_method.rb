def always_three
	puts "Give me a number"
	number_1 = gets.to_i
	final_number = (2*(number_1+5)-4)/2 - number_1
	puts "Always #{final_number}"
end

always_three