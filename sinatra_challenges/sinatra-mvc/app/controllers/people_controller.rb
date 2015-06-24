#show a list of the full names of all people with their birthdates
get "/people" do
	@people = Person.all
	
	erb :"/people/index"
end

#show the form for creating a new person
get "/people/new" do
	erb :"/people/new"
end

#create a new person
#if-else clause accounts for date input with dashes and without dashes (string input)
post "/people" do
	if params[:birthdate].include?("-")
		birthdate = params[:birthdate]
	else
		birthdate = Date.strptime(params[:birthdate], "%m%d%Y")
	end

	person = Person.create(first_name: params[:first_name], last_name: params[:last_name], birthdate: birthdate)
	redirect "/people/#{person.id}" 
end

#shows the individual page for each person 
#shows the result of creating a new person
get "/people/:id" do
	@person = Person.find(params[:id])
	birthdate_string = @person.birthdate.strftime("%m%d%Y")
	birth_path_num = Person.get_birth_path_num(birthdate_string)
	@message = Person.get_message(birth_path_num)
	
	erb :"/people/show"
end




