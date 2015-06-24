#show a list of the full names of all people with their birthdates
get "/people" do
	@people = Person.all
	
	erb :"/people/index"
end

#show the individual page for each person
get "/people/:id" do
	@person = Person.find(params[:id])
	birthdate_string = @person.birthdate.strftime("%m%d%Y")
	birth_path_num = Person.get_birth_path_num(birthdate_string)
	@message = Person.get_message(birth_path_num)
	
	erb :"/people/show"
end

#show the form for creating a new person
get "/people/new" do
	erb :"/people/new"
end

#create a new person
post "/people/" do
	person = Person.create(first_name: params[:first_name], last_name: params[:last_name], birthdate: params[:birthdate})
	redirect “/people/#{person.id}” 
	end
end

#show the result of creating a new person
get “/people/:id” do
	@person = Person.find(params[:id])
	erb :”/people/show”
end
