class Artist
  @@all = []
  def self.all
    @@all
  end   
  attr_accessor :songs, :name
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 
    
end
