#Songs are objects that have a song name, artist, album name, and genre.

class Song

	#attr_writer :name, :artist, :album
	#attr_reader :name, :artist, :album
	attr_accessor :name, :artist, :album
	
	def about_song
		return "#{@name} is by #{@artist} in the album #{@album}."
	end
	
end

#call the object class
#attr_writer, attr_reader, attr_accessor condense the setting and getting code
#You can tell if you are setting or getting by the side the method is on [left is setting, right is getting]
new_song = Song.new
new_song.name = "Road Regrets" #setting
song_name = new_song.name #getting
new_song.artist = "Dan Mangan" #setting
song_artist = new_song.artist #getting
new_song.album = "Nice, Nice, Very Nice" #setting
song_album = new_song.album #getting

puts new_song.about_song