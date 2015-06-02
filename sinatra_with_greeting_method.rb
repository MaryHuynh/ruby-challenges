require "sinatra"

#greeting method
def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting(name)
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	
	my_greeting = "Good #{time}, #{name.capitalize}!"
end


get "/:name" do
	#create a route
	name = params[:name].capitalize
	#set a variable my_greeting equal to the output from calling the greeting method
	@my_greeting = greeting(name)
	#display the output of the my_greeting variable as a string using string interpolation
	"#{my_greeting}"
	
	erb :home
end