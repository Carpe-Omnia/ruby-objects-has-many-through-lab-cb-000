class Patient
  @@all = []
  def all
    @@all
  end
  def initialize(name)
    @name = name
    @@all << self
  end
end
