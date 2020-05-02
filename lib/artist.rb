class Artist 
  
  attr_accessor :name
  
@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end

def new_song(name, genre)
  new_song = Song.new(name, self, genre)
end 

def songs 
  Songs.all.select do |song| 
    Song.artist == self 
    end 
    songs
end



def genres 
  songs.map do |song| 
   song.genre
 end 
 end

end