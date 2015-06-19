require "sinatra"

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
			message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when(2)
			message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when(3)
			message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
		when(4)
			message = "Your numerology number is 4. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when(5)
			message = "This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when(6)
			message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when(7)
			message = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when(8)
			message = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when(9)
			message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end
end

#2nd page of web app, which displays all the possible messages
get "/messageindex/" do
	@message_array = Array.new
	@message_array = [message(1), message(2), message(3), message(4), message(5), message(6), message(7), message(8), message(9)]
	
	erb :messages
end

#method to check if a user enters a valid birthdate
def valid_birthdate(input)
	if(input.length==8 && input.match(/^[0-9]+[0-9]$/))
		return true
	else
		return false
	end
end


#get method gets the form template for the homepage so the user can enter their birthdate
get "/" do
	erb :form
end

#use a URL parameter and a route to display the correct message with a birthdate in the URL
get "/:birthdate" do
	birthdate = params[:birthdate]
	birth_path_num = user_birthpath_number(birthdate)
	@message = message(birth_path_num)
	
	erb :index
end

#calculate the birthpath number using the user input from the form (e.g. birthdate)
#input a redirect command to another get request within the post request
post "/" do
	#birthdate = params[:birthdate].gsub("-", "")
	birthdate = params[:birthdate]
	if(valid_birthdate(birthdate))
		birth_path_num = user_birthpath_number(birthdate)
		redirect "/message/#{birth_path_num}"
	else
		@error = "You should enter a valid birthdate in the form of mmddyyyy."
		erb :form
	end
end

#get route that takes in the birth_path_num on the path and displays the message
#redirect the post request here so that the message is displayed via this get request
get "/message/:birth_path_num" do
	birth_path_num = params[:birth_path_num].to_i
	@message = message(birth_path_num)
	erb :index
end