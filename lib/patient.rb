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
  def new_apppointment(doctor, date, i=self)
    app = Appointment.new(i, date, doctor)
  end
  def appointments
    Appointment.all.select do |app|
      app.patient.name == @name
    end
  end
end
