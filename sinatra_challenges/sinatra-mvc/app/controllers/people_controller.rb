#show a list of the full names of all people with their birthdates
get "/people" do
	@people = Person.all
	
	erb :"/people/index"
end

#show the form for creating a new person
get "/people/new" do
	@person = Person.new
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

#get request to edit a person
get "/people/:id/edit" do
	@person=Person.find(params[:id])
	erb :"/people/edit"
end

#put request to handle the form submission when a person is edited
#need to find the parameters of the person explicitly in the put request again or the first_name, last_name, and birthdate methods will be undefined
put "/people/:id" do
	person = Person.find(params[:id])
	person.first_name = params[:first_name]
	person.last_name = params[:last_name]
	person.birthdate = params[:birthdate]
	person.save
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

#route for delete request
delete "/people/:id" do
	person = Person.find(params[:id])
	person.delete
	redirect "/people"
end


