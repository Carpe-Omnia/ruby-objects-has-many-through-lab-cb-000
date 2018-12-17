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
  def appointments
    Appointment.all.select do |app|
      app.doctor.name == @name
    end
  end
  def pateints
    self.appointments.collect do |app|
      app.patient
    end
  end

end
