require "song.rb"
class Artist
  @@all = []
  def self.all
    @@all
  end
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_song(name, genre)
    track = Song.new(name, self, genre)
    @songs << track
  end
  def songs
    Song.all.select do |track|
      track.artist == self
    end
  end
  def genres
    self.songs.collect do |track|
      track.genre
    end
  end
end
