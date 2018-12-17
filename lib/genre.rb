require "song.rb"
class Genre
  @@all = []
  def all
    @@all
  end
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def songs
    Song.all.select do |track|
      track.genre == self
    end
  end         
  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end       