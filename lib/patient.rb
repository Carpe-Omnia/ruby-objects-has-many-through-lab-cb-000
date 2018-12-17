class Patient
  @@all = []
  def self.all
    @@all
  end
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(doctor, date, i=self)
    app = Appointment.new(i, date, doctor)
  end
  def appointments
    Appointment.all.select do |app|
      app.patient.name == @name
    end
  end
  def doctors
    self.appointments.collect do |app|
      app.doctor
    end
  end

end
