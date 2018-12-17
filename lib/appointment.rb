class Appointment
  @@all = []
  def self.all
    @@all
  end
  attr_accessor :patient, :doctor, :date
  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end
end
