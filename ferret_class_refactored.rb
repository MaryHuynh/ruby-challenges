class Ferret
 
	def set_name=(ferret_name)
		@name = ferret_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeal
		return "squeeeeee"
	end
 
	def about_ferret
		puts "#{@name} says #{squeal}"
	end
 
end
 
class Chinchilla
 
	def set_name=(chinchilla_name)
		@name = chinchilla_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeek
		return "eeeep"
	end
	
	def about_chinchilla
		puts "#{@name} says #{squeek}"
	end
 
end
 
class Parrot
 
	def set_name=(parrot_name)
		@name = parrot_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def tweet
		return "chirp chirp"
	end
 
	def about_parrot
		puts "#{@name} says #{tweet}"
	end
end
 
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
 
my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
 
puts("#{my_ferret.about_ferret} #{my_parrot.about_parrot} #{my_chinchilla.about_chinchilla}") 


puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect