class Genre 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end
  
  def songs
    Song.all.select {|x| x.genre == self}
    
  end 
  
  def self.all 
    @@all
  end 
  
  def artists
    
  end
  
end 