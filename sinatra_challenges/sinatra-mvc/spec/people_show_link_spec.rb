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
	#test will fail if you don't have /people/ with two slashes, even if the link does work in the browser
    expect(last_response.body.include?("/people/#{@person.id}")).to be(true) 
	#expect(last_response.body.include?("people/#{@person.id}")).to be(true)
  end
end