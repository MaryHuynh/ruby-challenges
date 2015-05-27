i = 1

#the order of if/else statements matters since if/else statements
#terminate once the first condition reached is true
#while(i <= 100)
	#if(i%3==0 && i&5==0)
		#puts "FizzBuzz"
	#elsif(i%3==0)
		#puts "Fizz"
	#elsif(i%5==0)
		#puts "Buzz"
	#else
		#puts i
	#end	
	#i+=1
#end

#alternative code
while(i <= 100)
    if(i%3!=0 && i%5!=0)
	puts i    
    elsif(i%3==0 && i%5==0)
        puts "FizzBuzz"
    elsif(i%3==0)
        puts "Fizz"
    else(i%5==0)
        puts "Buzz"
    end    
    i+=1
end