class Patient

  attr_accessor :name, :doctor, :date, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    appointments = Appointment.all.select {|x| x.patient == self}
  end

  def doctors
    appointments = Appointment.all.select {|x| x.patient == self}
    return appointments.map {|x| x.doctor}
  end


end
