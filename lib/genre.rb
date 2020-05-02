class Genre 
  
  attr_accessor :name, :artist, :song
  
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs 
  Songs.all.select do |song| 
    Song.genre == self 
  end
  songs
end

def artists 
  songs.map do |song|
  song.artist
end
end
end