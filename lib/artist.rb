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
  def new_song(name, genre)
    track = Song.new(name, self, genre)
    @songs << track
  end
end
