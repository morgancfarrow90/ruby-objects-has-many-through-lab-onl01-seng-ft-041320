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
  self.songs.last
end 

def songs 
  Songs.all.select do |song| 
    Song.artist == self 
    end
end

def genres 
  Songs.all.map do |song| 
   song.genre
 end 
 genres 
 end 

end