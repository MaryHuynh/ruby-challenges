require 'spec_helper'

describe "Our Person Index Route" do
  include SpecHelper
  
  before (:all) do
    @person = Person.create(first_name: "Miss", last_name: "Piggy", birthdate: DateTime.now - 40.years )
  end

  after (:all) do
    @person.delete
  end
  
  it "displays a link to a person's show page on the index view" do
    get("/people")
	#last_response.should be_ok #direct url link tester (works as expected)
    expect(last_response.body.include?("/people/#{@person.id}")).to be(true)
	#expect("#{@person.first_name} #{@person.last_name}").to redirect_to("/people/#{@person.id}")
	#expect("#{@person.first_name} #{@person.last_name}").to have_link("/people/#{@person.id}")
	#expect(link).to match("/people/#{@person.id}")
	#should have_link("#{@person.first_name} #{@person.last_name}", href: "/people/#{@person.id}" )
	#last_response.body.match("/people/#{@person.id}") #false positive success
	#expect(last_request.url).eql?("/people/#{@person.id}") #false positive success
	#expect(last_request).eql?("http://www.google.com") #false positive success
	#body.should have_css("a", text: "#{@person.first_name} #{@person.last_name}")
	#expect(last_response.body).to have_link("/people/#{@person.id}")
  end
end