class Genre 
  
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def has_and_belongs_to_many
  
end