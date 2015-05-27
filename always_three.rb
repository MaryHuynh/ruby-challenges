puts "Give me a number"
number_1 = gets
number_1 = number_1.to_i
middle_number = (2*(number_1+5)-4)/2
final_number = middle_number - number_1
puts "Always #{final_number}"

