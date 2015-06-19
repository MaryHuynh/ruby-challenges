require "sinatra"

#get method gets the form template for the homepage so the user can enter their birthdate
get "/" do
	erb :form
end

#use a URL parameter and a route to display the correct message with a birthdate in the URL
get "/:birthdate" do
	setup_index_view
end

#leftover artifact of previous file with DRY refactoring to combine get '/:birthdate' and post '/' methods before forms
#update method calls for numerology computations methods in Person class
def setup_index_view
	birthdate = params[:birthdate]
	birth_path_num = Person.user_birthpath_number(birthdate)
	@message = Person.message(birth_path_num)
  
	erb :index
end

#calculate the birthpath number using the user input from the form (e.g. birthdate)
#input a redirect command to another get request within the post request
#update method call to valid_birthdate and user_birthpath_number methods in Person class
post "/" do
	#birthdate = params[:birthdate].gsub("-", "")
	birthdate = params[:birthdate]
	if(Person.valid_birthdate(birthdate))
		birth_path_num = Person.user_birthpath_number(birthdate)
		redirect "/message/#{birth_path_num}"
	else
		@error = "You should enter a valid birthdate in the form of mmddyyyy."
		erb :form
	end
end

#get route that takes in the birth_path_num on the path and displays the message
#redirect the post request here so that the message is displayed via this get request
#update method call to message method in Person class
get "/message/:birth_path_num" do
	birth_path_num = params[:birth_path_num].to_i
	@message = Person.message(birth_path_num)
	erb :index
end