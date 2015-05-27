
#while loop to puts "I love you"
time = 0

while(time < 5)
	puts("I love you")
	time+=1
end

#while loop that puts "I love you" while you are good
#puts "I still love you" if you are bad

puts("Are you good or bad?")
answer = gets.chomp.downcase

#must ask question and collect input again within while loop to prevent an infinite loop
while(answer == "good")
	puts("I love you")
	puts("Are you still good or bad?")
	answer = gets.chomp.downcase
	if(answer == "bad")
		puts("I still love you")
	end
end
