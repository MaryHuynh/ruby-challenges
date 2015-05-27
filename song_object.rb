#Songs are objects that have a song name, artist, album name, and genre.

class Song
	def set_name=(song_name)
		@name = song_name
	end
	
	def get_name
		return @name
	end
	
	def set_artist=(song_artist)
		@artist = song_artist
	end
	
	def get_artist
		return @artist
	end
	
	def set_album=(album_name)
		@album = album_name
	end
	
	def get_album
		return @album
	end
	
	def about_song
		return "#{@name} is by #{@artist} in the album #{@album}."
	end
	
end

#call the object class
#Note how setters and getters are separate methods. It is standard to separate
#methods as much as possible to allow code to be easily reused.
new_song = Song.new
new_song.set_name = "Road Regrets"
song_name = new_song.get_name
new_song.set_artist = "Dan Mangan"
song_artist = new_song.get_artist
new_song.set_album = "Nice, Nice, Very Nice"
song_album = new_song.get_album
puts "#{song_name} is by #{song_artist} in the album #{song_album}."

#To reduce the amount of code that must be written you can write about_song
#as another method that outputs the instance variables and then call that
#method to display the song info. 
puts new_song.about_song