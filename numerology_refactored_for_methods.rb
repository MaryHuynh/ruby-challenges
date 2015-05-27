#spaces matter
#It's good practice to write the methods you need first and then write the scripts that use/call the methods.
#You need 2 methods: (1) method to get the birthpath number and (2) method to output the correct message corresponding to the birthplace number

def user_birthpath_number(birthdate)
	
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
	number = number.to_s
	number = number[0].to_i + number[1].to_i
	
	if(number > 9)
		number = number.to_s
		number = number[0].to_i + number[1].to_i
	end
	
	return number
end


def message(number)
	case(number)
		when(1)
			puts("One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.")
		when(2)
			puts("This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.")
		when(3)
			puts("Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Threes enjoy life and have a good sense of humor. Ruled by Jupiter.")
		when(4)
			puts("This is the worker. Practical with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.")
		when(5)
			puts("This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.")
		when(6)
			puts("This is the peace lover. The number six is a loving, stable, harmonious vibration. Ruled by Venus.")
		when(7)
			puts("This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.")
		when(8)
			puts("This is the manager. Number eight is a strong, successful, and material vibration. Ruled by Saturn.")
		when(9)
			puts("This is the teacher. Number nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars.")
	end
end

#asking for user birthdate
puts("Enter your birthdate in MMDDYYYY format:")

#call user_birthpath_number method that takes user birthdate as an argument
number = user_birthpath_number(gets)

puts("Your numerology number is #{number}.")

#call the message method that takes the birthpath number as an argument
message(number)