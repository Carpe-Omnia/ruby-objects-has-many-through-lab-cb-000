class Artist
  @@all = []
  attr_accessor :songs, :name
  def initialize(name)
    @name = name
    @songs = []
  end
