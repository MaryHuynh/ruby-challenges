fav_color = "red"

case(fav_color)
when("red")
	puts("Red like fire!")
when("orange")
	puts("Orange like, well...an orange.")
when("yellow")
	puts("Yellow daffodils are so pretty in the spring!")
when("green")
	puts("Have you been to the Emerald City in Oz?")
when("blue")
	puts("Blue like the sky!")
when("purple")
	puts("Purple plums are the tastiest!")
else
	puts("Hmm, well I don't know what that color is!")
end

weather = "snowy"

case(weather)
when("sunny")
	puts("Shorts and sundress weather!")
when("cloudy")
	puts("Wear jeans and bring a light jacket!")
when("foggy")
	puts("Sweater weather!")
when("snowy")
	puts("Snowboots, your big winter coat, scarf, and mittens!")
when("rainy")
	puts("Raincoat and rainboots! Don't forget your umbrella!")
else
	puts("Weather is unpredictable! Be prepared for anything!")
end