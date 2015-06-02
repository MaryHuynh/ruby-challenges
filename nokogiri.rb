require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

#The ingredients list is an unordered list with the class "components-list"
#search = doc.search("ul")

#You could do a loop to get the text for each ingredient, 
#but you get the same output if you just grab the inner text for the whole list.

list = doc.css(".components-list").inner_text
puts list

#list = doc.css(".components-item")

#list.each do |n|
	#puts n.inner_text
#end

