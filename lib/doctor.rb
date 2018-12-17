class Doctor
  @@all = []
  def self.all
    @@all
  end
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(patient, date, i=self)
    app = Appointment.new(patient, date, i)
  end
end
