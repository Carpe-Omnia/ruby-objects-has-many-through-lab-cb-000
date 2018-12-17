class Patient
  @@all = []
  def all
    @@all
  end
  attr_accessor :name 
  def initialize(name)
    @name = name
    @@all << self
  end
end
